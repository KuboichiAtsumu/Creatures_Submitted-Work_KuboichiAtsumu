//==============================================================================================================================================
//
// フェードに関する処理のヘッダーファイル
// Author : Atsumu Kuboichi
//
//==============================================================================================================================================
#ifndef _FADE_H_ //このマクロ定義がされなかったら
#define _FADE_H_ //2重インクルード防止のマクロ定義

//===========================================================================================================
// ヘッダーインクルード
//===========================================================================================================
#include "object2D.h"
#include "scene.h"

//===========================================================================================================
// クラス定義
//===========================================================================================================
class CFade : public CObject2D
{
public:
	//======================================
	// 列挙型定義
	//======================================
	typedef enum
	{
		FADE_NONE,//フェードしていない
		FADE_IN,//フェードイン
		FADE_OUT,//フェードアウト
		MAX,
	}FADE;

	//======================================
	// 関数
	//======================================
	CFade(int nPriority = 98);//コンストラクタ
	~CFade() override;//デストラクタ
	HRESULT Init() override;//初期化処理
	void Uninit() override;//終了処理
	void Release() override;//解放処理
	void Update() override;//更新処理
	void Draw() override;//描画処理
	static CFade* Create();//生成処理
	void SetFade(CScene::MODE mode);//状態設定
	FADE GetFade() { return m_fade; }//状態取得
	
private:
	//======================================
	// 変数
	//======================================
	const float FADE_SPEED = 0.05f;//フェードの速度
	CScene::MODE m_NextMode;//次のモード
	FADE m_fade;//現在の状態
};

#endif