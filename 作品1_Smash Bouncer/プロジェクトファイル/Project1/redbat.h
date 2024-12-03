#pragma once
//==============================================================================================================================================
//
// レッドバットの処理に関するヘッダーファイル
// Author : Atsumu Kuboichi
//
//==============================================================================================================================================
#ifndef _REDBAT_H_
#define _REDBAT_H_

//===========================================================================================================
// ヘッダーインクルード
//===========================================================================================================
#include "bat.h"//バットヘッダー

//===========================================================================================================
// クラス定義
//===========================================================================================================
class CRedBat : public CBat
{
public:
	//======================================
	// 関数
	//======================================
	CRedBat(int nPriority = 3);//コンストラクタ
	~CRedBat() override;//デストラクタ
	HRESULT Init() override;//初期化処理
	void Uninit() override;//終了処理
	void Release() override;//解放処理
	void Update() override;//更新処理
	void Draw() override;//描画処理
	bool Collision(D3DXVECTOR3 pos, D3DXVECTOR3 size) override;//当たり判定
	void Hit() override;//ヒット処理
};

#endif
