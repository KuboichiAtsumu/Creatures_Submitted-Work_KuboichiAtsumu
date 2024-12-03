#pragma once
//==============================================================================================================================================
//
// バットの処理に関するヘッダーファイル
// Author : Atsumu Kuboichi
//
//==============================================================================================================================================
#ifndef _BAT_H_
#define _BAT_H_

//===========================================================================================================
// ヘッダーインクルード
//===========================================================================================================
#include "enemy.h"//エネミーヘッダー

//===========================================================================================================
// クラス定義
//===========================================================================================================
class CBat : public CEnemy
{
public:
	//======================================
	// 関数
	//======================================
	CBat(int nPriority = 3);//コンストラクタ
	~CBat() override;//デストラクタ
	void Update() override;//更新処理
};

#endif

