# Botton_Manager
## カーソルの当たり判定クラス

![image](https://user-images.githubusercontent.com/91818705/158431943-f4ae09bc-6802-4d91-93c3-621afafd8613.png)

## Function
- `bottonMode(mode)` 座標指定設定:rectMode関数等と同様に使用
- `botton(x, y, _x, _y)` ボタンの座標設定:rect関数等と同様に使用
- `hover()` カーソルが上にあるかどうか
- `click()` ボタン後された瞬間かどうか
- `Press()` ボタンが押されているかどうか
- `stop()`当たり判定無効化
- `start()`当たり判定有効化(初期有効)
- `x(), y(), _x(), _y()` botton関数でセットされた値の取得
- `drawBotton()` 当たり判定のある範囲を表示
