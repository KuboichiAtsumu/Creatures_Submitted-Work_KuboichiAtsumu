//==============================================================================================================================================
//
// タイマーデータの処理
// Author : Atsumu Kuboichi
//
//==============================================================================================================================================

//===========================================================================================================
// ヘッダーインクルード
//===========================================================================================================
#include "timer.h"//タイマー
#include "game.h"//ゲームシーン

//===========================================================================================================
// コンストラクタ
//===========================================================================================================
CTimer::CTimer(int nPriority) : CObject2D(nPriority)
{
	//メンバ変数初期化
	m_nTime = 240;//タイム
	m_nCntFrame = 0;//フレームカウンタ
	m_nDigit = 3;//桁数
}

//===========================================================================================================
// デストラクタ
//===========================================================================================================
CTimer::~CTimer()
{
}

//===========================================================================================================
// 更新処理
//===========================================================================================================
void CTimer::Update()
{
	//エディタモードではない場合
	if (CManager::GetScene()->GetEditMode())
	{
		//更新せずに処理を抜ける
		return;
	}

	//フレームカウントを加算
	m_nCntFrame++;

	//フレームカウントが60に達した場合
	if (m_nCntFrame >= CProcess::MAX_FRAME)
	{
		//ローカル変数宣言
		int nNum = m_nTime;//現在のスコアを保存
		int nDigit = 0;//桁数

		//タイマーを減らす
		m_nTime--;

		//フレームカウントをリセット
		m_nCntFrame = 0;

		//桁数を求める
		while (nNum != 0)
		{
			nNum /= 10;//スコアを10で割る
			nDigit++;//桁数を加算
		}

		//スコアが0の場合
		if (nDigit == 0)
		{
			//桁数を1に調整
			nDigit = 1;
		}

		//桁数を反映
		m_nDigit = nDigit;
	}
}
