//==============================================================================================================================================
//
// ポイントに関する処理
// Author : Atsumu Kuboichi
//
//==============================================================================================================================================

//===========================================================================================================
// ヘッダーインクルード
//===========================================================================================================
#include "point.h"

//===========================================================================================================
// コンストラクタ
//===========================================================================================================
CPoint::CPoint(int nPriority) : CObjectX(nPriority)
{
	//メンバ変数初期化
	m_pPrev = nullptr;//前のポイント情報
	m_pNext = nullptr;//次のポイント情報
}

//===========================================================================================================
// デストラクタ
//===========================================================================================================
CPoint::~CPoint()
{
}

//===========================================================================================================
// 初期化処理
//===========================================================================================================
HRESULT CPoint::Init()
{
	//テクスチャ生成
	CTexture* pTex = CManager::GetTexture();//取得
	int nTextureIdx = pTex->Regist(CXfile::GetSaveModelInfo(CXfile::POINT, 0)->aTextureFile);//登録
	BindTexture(pTex->GetAddress(nTextureIdx));//設定
	SetTextureIdx(nTextureIdx);//ID設定

	//モデル生成
	CXfile* pModel = CManager::GetModel();//取得
	int nModelIdx = pModel->Regist(CXfile::GetSaveModelInfo(CXfile::POINT, 0)->aModelFile);//登録
	BindModel(pModel->GetAddress(nModelIdx));//設定
	SetModelIdx(nModelIdx);//ID設定
	SetSize();//サイズ設定

	//自分がいるステージIDを登録
	SetPostStageID();

	//Xファイルオブジェクト初期化処理
	if (FAILED(CObjectX::Init()))
	{
		return E_FAIL;
	}

	return S_OK;
}

//===========================================================================================================
// 終了処理
//===========================================================================================================
void CPoint::Uninit()
{
	CObjectX::Uninit();//オブジェクト破棄
}

//===========================================================================================================
// 更新処理
//===========================================================================================================
void CPoint::Update()
{

}

//===========================================================================================================
// 描画処理
//===========================================================================================================
void CPoint::Draw()
{
	//デバッグ時のみ描画する
#ifdef _DEBUG
	CObjectX::Draw();
#endif // _DEBUG
}

//===========================================================================================================
// 生成処理
//===========================================================================================================
CPoint* CPoint::Create(D3DXVECTOR3 pos, D3DXVECTOR3 rot)
{
	CPoint* pPoint = NEW CPoint();

	pPoint->SetType(TYPE::SHOTPOINT);//オブジェクトタイプ設定
	pPoint->SetPos(pos);//生成位置設定
	pPoint->SetRot(rot);//生成向き設定
	pPoint->Init();//初期化処理

	return pPoint;
}
