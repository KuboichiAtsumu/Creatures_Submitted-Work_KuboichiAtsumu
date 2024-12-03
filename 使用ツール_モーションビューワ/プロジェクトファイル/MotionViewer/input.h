//============================================================================================================================================================================================================
//
//キー入力の処理に関するヘッダーファイル
//Author;久保市篤武
//
//============================================================================================================================================================================================================
#ifndef _INPUT_H_  //このマクロ定義がされなかったら
#define _INPUT_H_  //2重インクルード防止のマクロ定義

#include "main.h"

//============================================================================================================================================================================================================
//マクロ定義
//============================================================================================================================================================================================================
#define SPEED_KEY		(6)	//リピート情報の間隔
#define NUM_KEY_MAX		(256)	//キーの最大数
#define NUM_REPEAT		(4)		//リピート情報の数
#define JOYPAD_DEADZONE	(1)		//デッドゾーン

//============================================================================================================================================================================================================
//ボタンの種類
//============================================================================================================================================================================================================
typedef enum
{
	JOYKEY_UP = 0,	//上
	JOYKEY_DOWN,	//下
	JOYKEY_LEFT,	//左
	JOYKEY_RIGHT,	//右
	JOYKEY_START,	//スタート
	JOYKEY_BACK,	//バック
	JOYKEY_L3,		//L3(左スティック押込み)
	JOYKEY_R3,		//R3(右スティック押込み)
	JOYKEY_LB,		//LB
	JOYKEY_RB,		//RB
	JOYKEY_LT,		//LT
	JOYKEY_RT,		//RT
	JOYKEY_A,		//A
	JOYKEY_B,		//B
	JOYKEY_X,		//X
	JOYKEY_Y,		//Y
	JOYKEY_MAX
}JOYKEY;

//============================================================================================================================================================================================================
//スティックの種類
//============================================================================================================================================================================================================
typedef enum
{
	STICKTYPE_LEFT = 0, // 左スティック
	STICKTYPE_RIGHT,	// 右スティック
	STICKTYPE_MAX
}STICKTYPE;

//============================================================================================================================================================================================================
//スティックの方向
//============================================================================================================================================================================================================
typedef enum
{
	STICKANGLE_UP = 0, // 上
	STICKANGLE_DOWN,   // 下
	STICKANGLE_LEFT,   // 左
	STICKANGLE_RIGHT,  // 右
	STICKANGLE_MAX,
}STICKANGLE;

//============================================================================================================================================================================================================
//スティックの入力情報
//============================================================================================================================================================================================================
typedef struct
{
	float afTplDiameter[STICKTYPE_MAX];                 // スティックの倒し具合
	float afAngle[STICKTYPE_MAX];                       // スティックの角度
	bool abAnglePress[STICKTYPE_MAX][STICKANGLE_MAX];	// スティックの方向プレス情報
	bool abAngleTrigger[STICKTYPE_MAX][STICKANGLE_MAX];	// スティックの方向トリガー情報
	bool abAngleRepeat[STICKTYPE_MAX][STICKANGLE_MAX];  // スティックの方向リピート情報
	bool abAngleRelease[STICKTYPE_MAX][STICKANGLE_MAX]; // スティックの方向リリース情報
}STICKINPUT;

//============================================================================================================================================================================================================
//ボタンの種類
//============================================================================================================================================================================================================
typedef enum
{
	MOUSE_LEFT = 0,//左クリック
	MOUSE_RIGHT,//右クリック
	MOUSE_WHEEL,//ホイールクリック
	MOUSE_MAX
}MOUSE;

//============================================================================================================================================================================================================
//プロトタイプ宣言(キーボード)
//============================================================================================================================================================================================================
HRESULT InitKeyboard(HINSTANCE hInstance, HWND hWnd);	//初期化処理
void UninitKeyboard(void);								//終了処理
void UpdateKeyboard(void);								//更新処理
bool GetKeyboardPress(int nKey);						//プレス情報
bool GetKeyboardTrigger(int nKey);						//トリガー情報
bool GetKeyboardRepeat(int nKey);						//リピート情報

//============================================================================================================================================================================================================
//プロトタイプ宣言(PAD)
//============================================================================================================================================================================================================
HRESULT InitJoypad(void);											//初期化処理
void UninitJoypad(void);											//終了処理
void UpdateJoypad(void);											//更新処理
bool GetJoypadPress(JOYKEY key);									//プレス情報
bool GetJoypadTrigger(JOYKEY key);									//トリガー情報
bool GetJoypadRepeat(JOYKEY key);									//リピート情報
XINPUT_STATE* GetXInputState(void);									//コントローラーの入力情報の取得
void UpdateStick(void);												//スティックの更新処理
STICKINPUT GetStick(void);											//スティックの情報を取得
float FindAngle(D3DXVECTOR3 pos, D3DXVECTOR3 TargetPos);			//2点の角度を求める関数
WORD GetJoypadStick(SHORT sThumbX, SHORT sThumbY, SHORT sDeadZone);	//スティックの入力情報の取得

//============================================================================================================================================================================================================
//プロトタイプ宣言(マウス)
//============================================================================================================================================================================================================
HRESULT InitMouse(HINSTANCE hInstance, HWND hWnd);	//初期化処理
void UninitMouse(void);								//終了処理
void UpdateMouse(void);								//更新処理
bool GetMousePress(int nKey);						//プレス情報
bool GetMouseTrigger(int nKey);						//トリガー情報
bool GetMouseRepeat(int nKey);						//リピート情報
DIMOUSESTATE GetMouse(void);						//マウス情報の取得

#endif
