import datetime
import json
import time
import os
import backtrader as bt
from requests.packages.urllib3.util import Retry
from requests.adapters import HTTPAdapter
from requests import Session
from collections import OrderedDict

db_path = '/Users/pokersu/Projects/backtest/trading_data'
retries = Retry(total=5, backoff_factor=0.1)


def update_candles(inst_id: str, bar: str):
    f_path = f'{db_path}/{inst_id.lower()}/{bar}.json'
    candle_data = OrderedDict()
    if os.path.exists(f_path):
        temp = json.load(open(f_path))
        for k, v in temp.items():
            candle_data.update({int(k): v})
        start_ts = max(candle_data.keys()) - 1000
    else:
        start_ts = int(time.mktime(time.strptime('2021-01-01 00:00:00', "%Y-%m-%d %H:%M:%S")) * 1000.0)

    pos = int(time.time() * 1000.0)
    while pos > start_ts:
        print(inst_id + ": " + time.strftime("%Y-%m-%d %H:%M:%S", time.gmtime(pos / 1000.0)))
        url = f'https://www.okx.com/api/v5/market/history-candles?instId={inst_id.upper()}-USDT-SWAP&bar={bar}&limit=100&after={pos}'
        with Session() as s:
            s.mount(url, HTTPAdapter(max_retries=retries))
            response = s.get(url)
            data = response.json()['data'] if response.status_code == 200 else []
            if len(data) == 0:
                pos = start_ts - 1
                continue
            pos = int(min(data, key=lambda c: int(c[0]))[0])
            for d in data:
                t = int(d[0])
                if t < start_ts:
                    break
                candle_data.update({t: d})
    if not os.path.exists(f'{db_path}/{inst_id.lower()}'):
        os.mkdir(f'{db_path}/{inst_id.lower()}')
    json.dump(candle_data, open(f_path, 'w'))


if __name__ == '__main__':
    for i in ['avax', 'btc', 'eth', 'xrp', 'ltc', 'pepe', 'matic', 'sushi']:
        for b in ['15m', '5m', '3m', '1m', '30m', '1H', '4H', '1D', '1W']:
            update_candles(i, b)
