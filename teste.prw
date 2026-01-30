#Include "totvs.CH"   
/*
‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±…ÕÕÕÕÕÕÕÕÕÕ—ÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕ—ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª±±
±±∫Programa  ≥ADREL042     ∫ Autor ≥TOTVS ABM                             ∫±±
±±ÃÕÕÕÕÕÕÕÕÕÕÿÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕœÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ±±
±±∫DescriáÑo ≥ Relatorio titulos pagos e pagar por CC e multiplas natureza∫±±
±±»ÕÕÕÕÕÕÕÕÕÕœÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
*/
User Function ADREL042()

Local oReport := Nil

oReport:= ReportDef()
oReport:PrintDialog()

Return NIL

/*
‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±…ÕÕÕÕÕÕÕÕÕÕ—ÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕ—ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª±±
±±∫Programa  ≥ ReportDef   ∫ Autor ≥TOTVS ABM                             ∫±±
±±ÃÕÕÕÕÕÕÕÕÕÕÿÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕœÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ±±
±±∫Desc.     ≥ Funcao de definicao dos objetos do relatorio.              ∫±±
±±ÃÕÕÕÕÕÕÕÕÕÕÿÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕœÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ±±
±±∫Retorno   ≥ oReport -> Objeto do TReport.                              ∫±±
±±»ÕÕÕÕÕÕÕÕÕÕœÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
*/
Static Function ReportDef()

Local oReport    := Nil
Local oSection1  := Nil
// Local oSection2  := Nil
// Local oBreak     := Nil
Local cPerg      := "ADREL042" //PadR( 'ADREL042',Len(SX1->X1_GRUPO) )
Local aOrdem     := {"Por Data de Vencimento","Por Fornecedor","Por Data de Baixa","Por Data de Emiss„o"}  
//Local aOrdem     := {"Por Natureza","Por Fornecedor","Por Centro de Custo","Por Data de Baixa","Por Data de Vencimento","Por Data de Emiss„o"}  

Local cAliasP    := "XPAG"  

oReport := TReport():New("ADREL042","RelatÛrio de Titulos Contas a Pagar.",cPerg, {|oReport| ReportPrint(@oReport,@cAliasP,@aOrdem)},"Este relatÛrio exibe dados de tÌtulos pagos ou a pagar, conforme indicado nos par‚metros.")
oReport:SetLandScape() //Define orientaÁ„o de p·gina do relatÛrio como paisagem

AjustaSx1(cPerg)
Pergunte(cPerg,.F.)

oSection1 := TRSection():New(oReport,"Titulos Contas a Pagar",{"SE5","SE2","CTT","SED","SEV","SEZ"},aOrdem/*{Array com as ordens do relatÛrio}*/, .F., .F.,,.T./*lTotalInLine*/,.F.,,,,,.F. )

TRCell():New( oSection1,"E2_FILIAL"     , ,'Filial'             	,/*Picture*/,4,/*lPixel*/   ,{ || (cAliasP)->E2_FILIAL  } )
TRCell():New( oSection1,"E2_FORNECE"    , ,'Fornecedor'             ,/*Picture*/,34,/*lPixel*/  ,{ || (cAliasP)->E2_FORNECE + ' ' + (cAliasP)->E2_LOJA + space(01) + Padr((cAliasP)->A2_NOME,25 ) } )
TRCell():New( oSection1,"E2_PREFIXO"    , ,'Pref'                   ,/*Picture*/,TamSX3("E2_PREFIXO")[1]/*nTam*/,/*lPixel*/  ,{ || (cAliasP)->E2_PREFIXO  } )
TRCell():New( oSection1,"E2_NUM"        , ,'Numero'                 ,/*Picture*/,TamSX3("E2_NUM")[1]/*nTam*/,/*lPixel*/  ,{ || (cAliasP)->E2_NUM } )
TRCell():New( oSection1,"E2_PARCELA"    , ,'Parc'                   ,/*Picture*/,TamSX3("E2_PARCELA")[1]/*nTam*/,/*lPixel*/  ,{ || (cAliasP)->E2_PARCELA  } )  
TRCell():New( oSection1,"E2_EMISSAO"    , ,'Emiss„o'                 ,/*Picture*/,8,/*lPixel*/  ,{ || fData((cAliasP)->E2_EMISSAO) } )
TRCell():New( oSection1,"E2_VENCREA"    , ,'Vencto'                  ,/*Picture*/,8,/*lPixel*/  ,{ || fData((cAliasP)->E2_VENCREA) } )
TRCell():New( oSection1,"DTBAIXA"       , ,'Baixa'                   ,/*Picture*/,8,/*lPixel*/  ,{ || fData((cAliasP)->DTBAIXA) } )
TRCell():New( oSection1,"E2_VALOR"      , ,'Vl.Titulo'               ,"@E 9,999,999.99",12,/*lPixel*/  ,{ || (cAliasP)->E2_VALOR } )
TRCell():New( oSection1,"E2_SALDO"      , ,'Saldo'                   ,"@E 9,999,999.99",12,/*lPixel*/  ,{ || (cAliasP)->E2_SALDO} )
TRCell():New( oSection1,"VLRJURMUL"     , ,'Juros'                   ,"@E 9,999.99",8/*nTam*/,/*lPixel*/ ,{ || (cAliasP)->VLRJURMUL } )
TRCell():New( oSection1,"VLDESCO"       , ,'Desconto'                ,"@E 9,999.99",8/*nTam*/,/*lPixel*/ ,{ || (cAliasP)->VLDESCO } )
TRCell():New( oSection1,"VLCORRE"       , ,'Var.Cambial'             ,"@E 9,999,999.99",12/*nTam*/,/*lPixel*/ ,{ || (cAliasP)->VLCORRE } )
TRCell():New( oSection1,"VLRRATE"       , ,'Vl.Rateado'              ,"@E 9,999,999.99",12,/*lPixel*/      ,{ || (cAliasP)->VLRRATE } )
TRCell():New( oSection1,"CONTACTB"      , ,'C.Contabil'              ,/*Picture*/,TamSX3("E2_CONTAD")[1]/*nTam*/,/*lPixel*/ ,{ ||  (cAliasP)->CONTACTB   } )
TRCell():New( oSection1,"CC"            , ,'CCusto'                  ,/*Picture*/,TamSX3("E2_CCD")[1]/*nTam*/,/*lPixel*/ ,{ ||  (cAliasP)->CC   } )
TRCell():New( oSection1,"DESCC"         , ,'DescriÁ„o CC'            ,/*Picture*/,20/*nTam*/,/*lPixel*/ ,{ ||   Padr( (cAliasP)->CTT_DESC01,20 )  } )
TRCell():New( oSection1,"ITEMCTA"       , ,'Item Cta'                ,/*Picture*/,20/*nTam*/,/*lPixel*/ ,{ ||   Padr( (cAliasP)->ITEMCTA,20 )  } )
TRCell():New( oSection1,"DSITEMCTA"     , ,'Descr.Item Cta'          ,/*Picture*/,20/*nTam*/,/*lPixel*/ ,{ ||   Padr( (cAliasP)->DSITEMCTA,20 )  } )
TRCell():New( oSection1,"CLVL"          , ,'Classe Vlr'              ,/*Picture*/,20/*nTam*/,/*lPixel*/ ,{ ||   Padr( (cAliasP)->CLVL,20 )  } )
TRCell():New( oSection1,"DSCLVL"        , ,'Descr.Classe Vlr'        ,/*Picture*/,20/*nTam*/,/*lPixel*/ ,{ ||   Padr( (cAliasP)->DSCLVL,20 )  } )
TRCell():New( oSection1,"NATUREZ"       , ,'Natureza'                ,/*Picture*/,TamSx3("E2_NATUREZ")[1]/*nTam*/,/*lPixel*/,{ || (cAliasP)->NATUREZ   } )
TRCell():New( oSection1,"DESCNAT"       , ,'Descr.Natureza'          ,/*Picture*/,20/*nTam*/,/*lPixel*/,{ ||  Padr( (cAliasP)->ED_DESCRIC,20 ) } )
TRCell():New( oSection1,"E2_HIST"       , ,'HistÛrico'               ,/*Picture*/,TamSX3("E2_HIST")[1],/*lPixel*/,{ || (cAliasP)->HISTORICO } )

oSection1:SetHeaderPage() 
oSection1:SetColSpace(1)
oSection1:SetLineBreak(.T.)

Return(oReport)  
/*
‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±…ÕÕÕÕÕÕÕÕÕÕ—ÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕ—ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª±±
±±∫Programa  ≥fData        ∫ Autor ≥TOTVS ABM                             ∫±±
±±ÃÕÕÕÕÕÕÕÕÕÕÿÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕœÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ±±
±±∫DescriáÑo ≥ altera formato das datas                                    ±±
±±»ÕÕÕÕÕÕÕÕÕÕœÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
*/  
Static Function fdata(pData) 
Local cData := pData
if Valtype(pData) <> 'D'  
	cData := Stod(pData)
endif

cData := DTOC(cdata)
cData := LEFT(cData,6) + RIGHT(cData,2) 

Return cData
/*/
‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±⁄ƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒø±±
±±≥Programa  ≥ReportPrint ≥ Autor ≥Felipe Nunes Toledo  ≥ Data ≥17/03/2010≥±±
±±√ƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒ¥±±
±±≥DescriáÖo ≥A funcao estatica ReportPrint devera ser criada para todos  ≥±±
±±≥          ≥os relatorios que poderao ser agendados pelo usuario.       ≥±±
±±√ƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¥±±
±±≥ Uso      ≥ Marcomar  		                                          ≥±±
±±¿ƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
/*/
Static Function ReportPrint(oReport, cAliasP, aOrdem)

Local oSection1  := oReport:Section(1)
Local oBreak     := Nil
Local cTitulo  
Local cQry       := ''  
Local cCampo     := ''  
Local nCont      := 0 
Local cExpr      := ''   

Private nOrdem     := oReport:Section(1):GetOrder()
Private cOrderBy   := ' '   
Private cTitQuebra := ''

cTitulo := iif(MV_PAR01 == 1,'RelaÁ„o de TÌtulos a Pagar' ,'RelaÁ„o de Titulos Pagos' )
oReport:SetTitle(cTitulo)


Do Case 


	Case nOrdem == 1
  		cOrderBy	:=	"SE2.E2_VENCREA, SE2.E2_FORNECE, SE2.E2_LOJA, SE2.E2_PREFIXO, SE2.E2_NUM, SE2.E2_PARCELA"    
  		cCampo := "E2_VENCREA"
  		oBreak  := TRBreak():New(oSection1,oSection1:Cell("E2_VENCREA"),{|| fTotal("Total Vencimento")},.F.,"",.F.)

	Case nOrdem == 2
   		cOrderBy	:=	"SE2.E2_FORNECE, SE2.E2_LOJA, SE2.E2_PREFIXO, SE2.E2_NUM, SE2.E2_PARCELA"   
		cCampo := "E2_FORNECE"  		
   		oBreak  := TRBreak():New(oSection1,{|| (cAliasP)->E2_FORNECE + (cAliasP)->E2_LOJA },{||fTotal("Total Fornecedor")},.F.,"",.F.)    
		
	Case nOrdem == 3
 		cOrderBy	:=	"DTBAIXA, SE2.E2_FORNECE, SE2.E2_LOJA, SE2.E2_PREFIXO, SE2.E2_NUM, SE2.E2_PARCELA"   
 		cCampo := "DTBAIXA"
 		oBreak  := TRBreak():New(oSection1,oSection1:Cell("DTBAIXA"),{||fTotal("Total Data da Baixa")},.F.,"",.F.)

	Case nOrdem == 4
		cOrderBy	:=	"SE2.E2_EMISSAO, SE2.E2_FORNECE, SE2.E2_LOJA, SE2.E2_PREFIXO, SE2.E2_NUM, SE2.E2_PARCELA"  
		cCampo := "E2_EMISSAO"
		oBreak  := TRBreak():New(oSection1,oSection1:Cell("E2_EMISSAO"),{|| FTOTAL('Total Emissao') } ,.F.,"",.F.)   

End Case

//⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
//≥Totalizando os Percentuais                                    ≥
//¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ 
TRFunction():New(oSection1:Cell("E2_VALOR")		,Nil ,"SUM",oBreak,'Valor TÌtulo.' ,"@E 999,999,999.99"/*cPict*/,/*bBlock*/,.F.,.T.)
TRFunction():New(oSection1:Cell("E2_SALDO")		,Nil ,"SUM",oBreak,'Saldo.'        ,"@E 999,999,999.99"/*cPict*/,/*bBlock*/,.F.,.T.)
TRFunction():New(oSection1:Cell("VLRJURMUL")	,Nil ,"SUM",oBreak,'Juros.'        ,"@E 999,999,999.99"/*cPict*/,/*bBlock*/,.F.,.T.)
TRFunction():New(oSection1:Cell("VLDESCO")  	,Nil ,"SUM",oBreak,'Descontos.'    ,"@E 999,999,999.99"/*cPict*/,/*bBlock*/,.F.,.T.)
TRFunction():New(oSection1:Cell("VLCORRE")  	,Nil ,"SUM",oBreak,'Var.Cambial'   ,"@E 999,999,999.99"/*cPict*/,/*bBlock*/,.F.,.T.)
TRFunction():New(oSection1:Cell("VLRRATE")		,Nil ,"SUM",oBreak,'Valor Rateado' ,"@E 999,999,999.99"/*cPict*/,/*bBlock*/,.F.,.T.)

//⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
//≥Converte os parametros do tipo range, para um range cheio,  ≥
//≥caso o conteudo do parametro esteja vazio                   ≥
//¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
FullRange(oReport:uParam)
//⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
//≥Transforma parametros Range em expressao SQL                            ≥
//¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
MakeSqlExpr(oReport:uParam)   

QryPag(@cQry)  

//memowrite("c:\adrel042.txt",cqry)
oSection1:SetQuery("XPAG",cQry,.t.,,)
oSection1:SetUseQuery(.t.) 

oReport:SetMeter((cAliasP)->(RecCount()))
if MV_PAR01 == 1  
	oSection1:Cell("DTBAIXA"):SetValue('  /  /  ') //para a opcao de titulos a pagar, nao sera impressa a data da baixa	
endif
            
oSection1:Init()  
(cAliasP)->(dbGoTop())
Do While !(cAliasP)->(Eof())	

	if MV_PAR01 == 2
		If !MovBcoBx( (cAliasP)->E5_MOTBX )
			(cAliasP)->(dbSkip())
			Loop	
		Endif
	Endif
	               
	if nOrdem == 2 
		cQuebra := (cAliasP)->E2_FORNECE + (cAliasP)->E2_LOJA 
		cExpr   := 'XPAG->E2_FORNECE + XPAG->E2_LOJA'
	Else
		cQuebra := (cAliasP)->&cCampo  
		cExpr   := 'XPAG->'+ cCampo
	Endif    		
     
  	Do While !(cAliasP)->(Eof()) .and. &cExpr == cQuebra  
   
		If oReport:Cancel()
			Exit
		EndIf 
		
		cChave := (cAliasP)->E2_PREFIXO + (cAliasP)->E2_NUM + (cAliasP)->E2_PARCELA 
		nCont := 0
		Do While !(cAliasP)->(Eof()) .and. &cExpr == cQuebra .and. (cAliasP)->E2_PREFIXO + (cAliasP)->E2_NUM + (cAliasP)->E2_PARCELA == cChave		 
            nCont ++   
            if nCont == 1  
            	 oSection1:Cell("E2_VALOR"):SetValue( (cAliasP)->E2_VALOR  ) 
            	 oSection1:Cell("E2_SALDO"):SetValue( (cAliasP)->E2_SALDO  ) 
            else
	      	   	 oSection1:Cell("E2_VALOR"):SetValue(0)
	      	   	 oSection1:Cell("E2_SALDO"):SetValue(0)
            endif  

			oSection1:PrintLine()			   	 	
 
		    if valtype( &cExpr ) == 'D'
	   			cTitQuebra := dtoc( &cExpr )
			else 				
				cTitQuebra := &cExpr
			endif
						
			(cAliasP)->(dbSkip())
			oReport:IncMeter() 
		Enddo
	Enddo  
					
Enddo		  

oSection1:Finish()   

Return Nil 

Static Function fTotal(pTit)
Local cTit  
if nOrdem == 4  //data da baixa   
	if MV_PAR01 == 1 //titulos a pagar
 	 	cTitQuebra := '  /  /  '  
 	else 
 		cTitQuebra := DTOC(stod(cTitQuebra))
 	endif
elseif nOrdem == 2 //por fornecedor
   	cTitQuebra := left(ctitquebra,6) + ' ' + right(ctitquebra,2)
endif
cTit := pTit + ' ' + cTitQuebra
 
Return cTit
/*
‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±…ÕÕÕÕÕÕÕÕÕÕ—ÕÕÕÕÕÕÕÕÕÕÕÕÕÀÕÕÕÕÕÕÕ—ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª±±
±±∫Programa  ≥QryPag       ∫ Autor ≥TOTVS ABM                             ∫±±
±±ÃÕÕÕÕÕÕÕÕÕÕÿÕÕÕÕÕÕÕÕÕÕÕÕÕ ÕÕÕÕÕÕÕœÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕπ±±
±±∫DescriáÑo ≥ query do relatorio                                         ±±
±±»ÕÕÕÕÕÕÕÕÕÕœÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
*/ 
Static Function QryPag(cQry) 

IF MV_PAR01 == 1 //TITULOS A PAGAR
	cQry := "SELECT " + CRLF
	cQry += "  SE2.E2_FILIAL, SE2.E2_FORNECE, SE2.E2_LOJA, SA2.A2_NOME,  SE2.E2_PREFIXO, SE2.E2_NUM, SE2.E2_PARCELA, " + CRLF
	cQry += "  SE2.E2_EMISSAO, SE2.E2_VENCREA, ISNULL(SEZ.EZ_CCUSTO,SE2.E2_CCD) CC, CTT.CTT_DESC01, "   + CRLF
	cQry += "  ISNULL(SEZ.EZ_ITEMCTA,SE2.E2_ITEMD) AS ITEMCTA, ISNULL(CTD.CTD_DESC01,'') AS DSITEMCTA, "    + CRLF
	cQry += "  ISNULL(SEZ.EZ_CLVL,SE2.E2_CLVLDB) AS CLVL,  ISNULL(CTH.CTH_DESC01,'') AS DSCLVL, "    + CRLF
	cQry += "  CASE WHEN SE2.E2_MOEDA <> 1 THEN	(SE2.E2_VALOR * SE2.E2_TXMOEDA ) ELSE SE2.E2_VALOR END E2_VALOR, " + CRLF
	cQry += "  ISNULL(SEV.EV_NATUREZ,SE2.E2_NATUREZ) NATUREZ, SED.ED_DESCRIC, SE2.E2_EMISSAO DTBAIXA, 0 VLRJURMUL,0 VLCORRE, 0 VLDESCO, "   + CRLF
	cQry += "  ((CASE WHEN SE2.E2_MOEDA <> 1 THEN	(SE2.E2_VALOR * SE2.E2_TXMOEDA ) ELSE SE2.E2_VALOR END * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1)) VLRRATE, " + CRLF
	cQry += "  SE2.E2_HIST HISTORICO, CASE WHEN SE2.E2_MOEDA <> 1 THEN (SE2.E2_SALDO * SE2.E2_TXMOEDA) ELSE SE2.E2_SALDO END E2_SALDO,ISNULL(SEZ.EZ_CONTA,SE2.E2_CONTAD) CONTACTB "   + CRLF
	cQry += "FROM " + RetSqlName("SE2") + " SE2 "     + CRLF
	cQry += "	INNER JOIN " + RetSqlName("SA2") + " SA2 ON " + CRLF
	cQry += "		    SA2.A2_FILIAL  = '" + xFilial("SA2") + "' " + CRLF
	cQry += "	    AND SA2.A2_COD     = SE2.E2_FORNECE " + CRLF
	cQry += "	    AND SA2.A2_LOJA    = SE2.E2_LOJA  " + CRLF
	cQry += "		AND SA2.D_E_L_E_T_ = ' ' "
	cQry += "	LEFT JOIN " + RetSqlName("SEV") + " SEV ON " + CRLF
	cQry += "	        SEV.EV_FILIAL  = SE2.E2_FILIAL " + CRLF
	cQry += "	    AND SEV.EV_PREFIXO = SE2.E2_PREFIXO " + CRLF
	cQry += "	    AND SEV.EV_NUM     = SE2.E2_NUM   " + CRLF
	cQry += "	    AND SEV.EV_PARCELA = SE2.E2_PARCELA " + CRLF
	cQry += "	    AND SEV.EV_TIPO    = SE2.E2_TIPO " + CRLF
	cQry += "	    AND SEV.EV_CLIFOR  = SE2.E2_FORNECE " + CRLF
	cQry += "	    AND SEV.EV_LOJA    = SE2.E2_LOJA " + CRLF
	cQry += "	    AND SEV.EV_IDENT   = '1' "  + CRLF //RATEIO NA EMISSAO DO TITULO
	cQry += "		AND SEV.D_E_L_E_T_ = ' ' "
	cQry += "	LEFT JOIN " + RetSqlName("SEZ") + " SEZ ON " + CRLF
	cQry += "	        SEZ.EZ_FILIAL  = SEV.EV_FILIAL " + CRLF
	cQry += "	    AND SEZ.EZ_PREFIXO = SEV.EV_PREFIXO " + CRLF
	cQry += "	    AND SEZ.EZ_NUM     = SEV.EV_NUM " + CRLF
	cQry += "	    AND SEZ.EZ_PARCELA = SEV.EV_PARCELA " + CRLF
	cQry += "	    AND SEZ.EZ_TIPO    = SEV.EV_TIPO " + CRLF
	cQry += "	    AND SEZ.EZ_CLIFOR  = SEV.EV_CLIFOR " + CRLF
	cQry += "	    AND SEZ.EZ_LOJA    = SEV.EV_LOJA " + CRLF
	cQry += "	    AND SEZ.EZ_NATUREZ = SEV.EV_NATUREZ "  + CRLF
	cQry += "	    AND SEZ.EZ_IDENT   = '1' " + CRLF
	cQry += "		AND SEZ.D_E_L_E_T_ = ' ' " + CRLF
	cQry += "	LEFT JOIN " + RetSqlName("CTT") + " CTT ON " + CRLF
	cQry += "	    CTT.CTT_FILIAL = '" + xFilial("CTT") + "' " + CRLF
	cQry += "   	AND CTT.CTT_CUSTO  = CASE WHEN ISNULL(SEZ.EZ_CCUSTO,' ') = ' ' THEN SE2.E2_CCD ELSE SEZ.EZ_CCUSTO END " + CRLF
	cQry += "		AND CTT.D_E_L_E_T_ = ' ' " + CRLF
	cQry += "	LEFT JOIN " + RetSqlName("SED") + " SED ON " + CRLF
	cQry += "		SED.ED_FILIAL  = '" + xFilial("SED") + "'" + CRLF
	cQry += "		AND SED.ED_CODIGO  = CASE WHEN ISNULL(SEV.EV_NATUREZ,' ') = ' ' THEN SE2.E2_NATUREZ ELSE SEV.EV_NATUREZ END " + CRLF
	cQry += "		AND SED.D_E_L_E_T_ = ' ' " + CRLF

	// ===== Ajuste pontual: JOIN CTD/CTH para permitir DSITEMCTA/DSCLVL =====
	cQry += "	LEFT JOIN " + RetSqlName("CTD") + " CTD ON " + CRLF  //ITEM CONTABIL" + CRLF
	cQry += "	    CTD.CTD_FILIAL = '" + xFilial("CTD") + "' " + CRLF
	cQry += "		AND CTD.D_E_L_E_T_ = ' ' "   + CRLF
	cQry += "		AND CTD.CTD_ITEM  = CASE WHEN ISNULL(SEZ.EZ_ITEMCTA,' ') = ' ' THEN SE2.E2_ITEMD ELSE SEZ.EZ_ITEMCTA END " + CRLF

	cQry += "	LEFT JOIN " + RetSqlName("CTH") + " CTH ON " + CRLF  //CLASSE DE VLR" + CRLF
	cQry += "	    CTH.CTH_FILIAL = '" + xFilial("CTH") + "' " + CRLF
	cQry += "		AND CTH.D_E_L_E_T_ = ' ' "   + CRLF
	cQry += "		AND CTH.CTH_CLVL  = CASE WHEN ISNULL(SEZ.EZ_CLVL,' ') = ' ' THEN SE2.E2_CLVLDB ELSE SEZ.EZ_CLVL END " + CRLF
	// =====================================================================

	cQry += "WHERE " + CRLF
	cQry += "  SE2.E2_FILIAL BETWEEN '" + MV_PAR25 + "' AND '" + MV_PAR26 + "'  AND SE2.D_E_L_E_T_ = ' ' "    + CRLF
	cQry += "  AND SE2.E2_SALDO > 0 "  + CRLF  //titulos com saldo a pagar   + CRLF
	cQry += "  AND SE2.E2_PREFIXO  BETWEEN '" + mv_par02 + "' AND '" + mv_par03 + "' " + CRLF
	cQry += "  AND SE2.E2_NUM      BETWEEN '" + mv_par04 + "' AND '" + mv_par05 + "' " + CRLF
	cQry += "  AND SE2.E2_TIPO   <> 'PR' " + CRLF
	cQry += "  AND SE2.E2_TIPO     BETWEEN '" + mv_par06 + "' AND '" + mv_par07 + "' " + CRLF
	cQry += "  AND SE2.E2_EMISSAO  BETWEEN '" + dtos(mv_par08) + "' AND '" + DtoS(mv_par09) + "' " + CRLF
	cQry += "  AND SE2.E2_VENCREA  BETWEEN '" + dtos(mv_par10) + "' AND '" + DtoS(mv_par11) + "' " 	 + CRLF
	cQry += "  AND ( (SEV.EV_PERC IS NULL AND SE2.E2_NATUREZ  BETWEEN '" + mv_par14 + "' AND '" + mv_par15 + "') OR " + CRLF
	cQry += "        (SEV.EV_PERC IS NOT NULL AND EXISTS (SELECT 1 FROM " + RetSqlName("SEV") + " SEVAUX " + CRLF
	cQry += "           WHERE SEVAUX.R_E_C_N_O_ = SEV.R_E_C_N_O_ AND SEVAUX.EV_NATUREZ BETWEEN '" + mv_par14 + "' AND '" + mv_par15 + "')) "  + CRLF
	cQry += "       ) "		
	cQry += "  AND SE2.E2_FORNECE  BETWEEN '" + mv_par16 + "' AND '" + mv_par18 + "' " + CRLF
    cQry += "  AND SE2.E2_LOJA     BETWEEN '" + mv_par17 + "' AND '" + mv_par19 + "' "	 + CRLF
	cQry += "  AND ((SEZ.EZ_PERC IS NULL AND SE2.E2_CCD  BETWEEN '" + mv_par20 + "' AND '" + mv_par21 + "') OR " + CRLF
   	cQry += "       (SEZ.EZ_PERC IS NOT NULL AND EXISTS (SELECT 1 FROM " + RetSqlName("SEZ") + " SEZAUX " + CRLF
    cQry += "          	WHERE SEZAUX.R_E_C_N_O_ = SEZ.R_E_C_N_O_ AND SEZAUX.EZ_CCUSTO BETWEEN '" + mv_par20 + "' AND '" + mv_par21 + "')) " + CRLF
    cQry += "       ) " + CRLF
    cQry += "  AND SE2.E2_PORTADO BETWEEN '" + mv_par22 + "' AND '" + mv_par23 + "' "    + CRLF
    cQry += "ORDER BY " + cOrderBy  + CRLF           
    
ELSE // TITULOS PAGOS 
	
	cQry := "SELECT " + CRLF
	cQry += "  SE2.E2_FILIAL, SE2.E2_FORNECE, SE2.E2_LOJA, SA2.A2_NOME, SE2.E2_PREFIXO, SE2.E2_NUM, SE2.E2_PARCELA, " + CRLF
	cQry += "  SE2.E2_EMISSAO, SE2.E2_VENCREA,  ISNULL(SEZ.EZ_CCUSTO,SE2.E2_CCD) CC, CTT.CTT_DESC01, "    + CRLF
	cQry += "  ISNULL(SEZ.EZ_ITEMCTA,SE2.E2_ITEMD) AS ITEMCTA, ISNULL(CTD.CTD_DESC01,'') AS DSITEMCTA, "    + CRLF
	cQry += "  ISNULL(SEZ.EZ_CLVL,SE2.E2_CLVLDB) AS CLVL,  ISNULL(CTH.CTH_DESC01,'') AS DSCLVL, "    + CRLF
	cQry += "  CASE WHEN SE2.E2_MOEDA <> 1 THEN	(SE2.E2_VALOR * SE2.E2_TXMOEDA ) ELSE SE2.E2_VALOR END E2_VALOR, "   + CRLF
	cQry += "  CASE WHEN SE2.E2_MOEDA <> 1 THEN (SE2.E2_SALDO * SE2.E2_TXMOEDA) ELSE SE2.E2_SALDO END E2_SALDO, "   + CRLF	
	cQry += "  ISNULL(SEV.EV_NATUREZ,SE2.E2_NATUREZ) NATUREZ, SED.ED_DESCRIC,  "    + CRLF
	cQry += "  SE5.E5_TIPODOC, SE5.E5_MOTBX, SE5.E5_DATA DTBAIXA, ((SE5.E5_VLJUROS + SE5.E5_VLMULTA) * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1) VLRJURMUL, " + CRLF
	cQry += "  (SE5.E5_VLDESCO * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1) VLDESCO, "   + CRLF
	cQry += "  (SE5.E5_VLCORRE * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1) VLCORRE, "   + CRLF
	cQry += "  ISNULL(SEZ.EZ_CONTA,SE2.E2_CONTAD) CONTACTB, "   + CRLF

   	cQry += "  (SE5.E5_VALOR * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1) VLRRATE, " + CRLF
   	
	if mv_par24 == 1 //historico da emissao
 		cQry += "  SE2.E2_HIST HISTORICO " + CRLF
	else
 		cQry += "  SE5.E5_HISTOR HISTORICO " + CRLF
 	endif	
	cQry += "FROM " + RetSqlName("SE2") + " SE2 "     + CRLF
	cQry += "	INNER JOIN " + RetSqlName("SE5") + " SE5 ON " + CRLF
	cQry += "       SE2.E2_FILIAL  = SE5.E5_FILIAL  " + CRLF
	cQry += "       AND SE2.E2_PREFIXO = SE5.E5_PREFIXO " + CRLF
	cQry += "       AND SE2.E2_NUM     = SE5.E5_NUMERO  " + CRLF
	cQry += "       AND SE2.E2_PARCELA = SE5.E5_PARCELA  " + CRLF
	cQry += "       AND SE2.E2_TIPO    = SE5.E5_TIPO " + CRLF
	cQry += "       AND SE2.E2_FORNECE = SE5.E5_CLIFOR " + CRLF
	cQry += "       AND SE2.E2_LOJA    = SE5.E5_LOJA " + CRLF
	cQry += " 	    AND SE5.D_E_L_E_T_ = ' ' "    + CRLF
	cQry += "	INNER JOIN " + RetSqlName("SA2") + " SA2 ON " + CRLF
	cQry += "		    SA2.A2_FILIAL  = '" + xFilial("SA2") + "' " + CRLF
	cQry += "	    AND SA2.A2_COD     = SE2.E2_FORNECE " + CRLF
	cQry += "	    AND SA2.A2_LOJA    = SE2.E2_LOJA  " + CRLF
	cQry += "		AND SA2.D_E_L_E_T_ = ' ' " + CRLF
	cQry += "	LEFT JOIN " + RetSqlName("SEV") + " SEV ON " + CRLF
	cQry += "	        SEV.EV_FILIAL  = SE2.E2_FILIAL " + CRLF
	cQry += "	    AND SEV.EV_PREFIXO = SE2.E2_PREFIXO " + CRLF
	cQry += "	    AND SEV.EV_NUM     = SE2.E2_NUM   " + CRLF
	cQry += "	    AND SEV.EV_PARCELA = SE2.E2_PARCELA " + CRLF
	cQry += "	    AND SEV.EV_TIPO    = SE2.E2_TIPO " + CRLF
	cQry += "	    AND SEV.EV_CLIFOR  = SE2.E2_FORNECE " + CRLF
	cQry += "	    AND SEV.EV_LOJA    = SE2.E2_LOJA " + CRLF
	cQry += "	    AND SEV.EV_IDENT   = '1' "  + CRLF //RATEIO NA EMISSAO DO TITULO
	cQry += "		AND SEV.D_E_L_E_T_ = ' ' " + CRLF
	cQry += "	LEFT JOIN " + RetSqlName("SEZ") + " SEZ ON " + CRLF 
	cQry += "	        SEZ.EZ_FILIAL  = SEV.EV_FILIAL " + CRLF
	cQry += "	    AND SEZ.EZ_PREFIXO = SEV.EV_PREFIXO " + CRLF
	cQry += "	    AND SEZ.EZ_NUM     = SEV.EV_NUM " + CRLF
	cQry += "	    AND SEZ.EZ_PARCELA = SEV.EV_PARCELA " + CRLF
	cQry += "	    AND SEZ.EZ_TIPO    = SEV.EV_TIPO " + CRLF
	cQry += "	    AND SEZ.EZ_CLIFOR  = SEV.EV_CLIFOR " + CRLF
	cQry += "	    AND SEZ.EZ_LOJA    = SEV.EV_LOJA " + CRLF
	cQry += "	    AND SEZ.EZ_NATUREZ = SEV.EV_NATUREZ " + CRLF
	cQry += "	    AND SEZ.EZ_IDENT   = '1' " + CRLF
	cQry += "		AND SEZ.D_E_L_E_T_ = ' ' " + CRLF
	cQry += "	LEFT JOIN " + RetSqlName("CTT") + " CTT ON " + CRLF
	cQry += "	    CTT.CTT_FILIAL = '" + xFilial("CTT") + "' " + CRLF
	cQry += "   	AND CTT.CTT_CUSTO  = CASE WHEN ISNULL(SEZ.EZ_CCUSTO,' ') = ' ' THEN SE2.E2_CCD ELSE SEZ.EZ_CCUSTO END " + CRLF
	cQry += "		AND CTT.D_E_L_E_T_ = ' ' " + CRLF
	cQry += "	LEFT JOIN " + RetSqlName("SED") + " SED ON " + CRLF
	cQry += "		SED.ED_FILIAL  = '" + xFilial("SED") + "'" + CRLF
	cQry += "		AND SED.ED_CODIGO  = CASE WHEN ISNULL(SEV.EV_NATUREZ,' ') = ' ' THEN SE2.E2_NATUREZ ELSE SEV.EV_NATUREZ END " + CRLF
	cQry += "		AND SED.D_E_L_E_T_ = ' ' "   + CRLF

	cQry += "	LEFT JOIN " + RetSqlName("CTD") + " CTD ON " + CRLF  //ITEM CONTABIL
	cQry += "	    CTD.CTD_FILIAL = '" + xFilial("CTD") + "' " + CRLF
	cQry += "		AND CTD.D_E_L_E_T_ = ' ' "   + CRLF
	cQry += "		AND CTD.CTD_ITEM  = CASE WHEN ISNULL(SEZ.EZ_ITEMCTA,' ') = ' ' THEN SE2.E2_ITEMD ELSE SEZ.EZ_ITEMCTA END " + CRLF

	cQry += "	LEFT JOIN " + RetSqlName("CTH") + " CTH ON " + CRLF  //CLASSE DE VLR
	cQry += "	    CTH.CTH_FILIAL = '" + xFilial("CTH") + "' " + CRLF
	cQry += "		AND CTH.D_E_L_E_T_ = ' ' "   + CRLF
	cQry += "		AND CTH.CTH_CLVL  = CASE WHEN ISNULL(SEZ.EZ_CLVL,' ') = ' ' THEN SE2.E2_CLVLDB ELSE SEZ.EZ_CLVL END " + CRLF

	cQry += "WHERE " + CRLF
	cQry += "  SE2.E2_FILIAL BETWEEN '" + MV_PAR25 + "' AND '" + MV_PAR26 + "'  AND SE2.D_E_L_E_T_ = ' ' "    + CRLF
	cQry += "  AND SE2.E2_PREFIXO  BETWEEN '" + mv_par02 + "' AND '" + mv_par03 + "' " + CRLF
	cQry += "  AND SE2.E2_NUM      BETWEEN '" + mv_par04 + "' AND '" + mv_par05 + "' " + CRLF
	cQry += "  AND SE2.E2_TIPO   <> 'PR' " + CRLF
	cQry += "  AND SE2.E2_TIPO     BETWEEN '" + mv_par06 + "' AND '" + mv_par07 + "' " + CRLF
	cQry += "  AND SE2.E2_EMISSAO  BETWEEN '" + dtos(mv_par08) + "' AND '" + DtoS(mv_par09) + "' " + CRLF
	cQry += "  AND SE2.E2_VENCREA  BETWEEN '" + dtos(mv_par10) + "' AND '" + DtoS(mv_par11) + "' " 	  + CRLF
	cQry += "  AND SE5.E5_DATA     BETWEEN '" + dtos(mv_par12) + "' AND '" + DtoS(mv_par13) + "' " 	 + CRLF
	cQry += "  AND ((SEV.EV_PERC IS NULL AND SE2.E2_NATUREZ  BETWEEN '" + mv_par14 + "' AND '" + mv_par15 + "') OR " + CRLF
	cQry += "       (SEV.EV_PERC IS NOT NULL AND EXISTS (SELECT 1 FROM " + RetSqlName("SEV") + " SEVAUX " + CRLF
	cQry += "           WHERE SEVAUX.R_E_C_N_O_ = SEV.R_E_C_N_O_ AND SEVAUX.EV_NATUREZ BETWEEN '" + mv_par14 + "' AND '" + mv_par15 + "')) "  + CRLF
	cQry += "       ) "		 + CRLF
	cQry += "  AND SE2.E2_FORNECE  BETWEEN '" + mv_par16 + "' AND '" + mv_par18 + "' " + CRLF
    cQry += "  AND SE2.E2_LOJA     BETWEEN '" + mv_par17 + "' AND '" + mv_par19 + "' "	 + CRLF
	cQry += "  AND ((SEZ.EZ_PERC IS NULL AND SE2.E2_CCD  BETWEEN '" + mv_par20 + "' AND '" + mv_par21 + "') OR " + CRLF
	cQry += "       (SEZ.EZ_PERC IS NOT NULL AND EXISTS (SELECT 1 FROM " + RetSqlName("SEZ") + " SEZAUX " + CRLF
    cQry += "          	WHERE SEZAUX.R_E_C_N_O_ = SEZ.R_E_C_N_O_ AND SEZAUX.EZ_CCUSTO BETWEEN '" + mv_par20 + "' AND '" + mv_par21 + "')) " + CRLF
    cQry += "       ) "    + CRLF
	cQry += "  AND SE5.E5_SITUACA  NOT IN ('C','E','X')  " + CRLF
	cQry += "  AND SE5.E5_TIPODOC NOT IN ('CM','MT','JR','DC') " + CRLF
	cQry += "  AND ((SE5.E5_TIPODOC = 'CD' AND SE5.E5_VENCTO <= SE5.E5_DATA) OR (SE5.E5_TIPODOC <> 'CD')) " + CRLF
	cQry += "   		AND SE5.E5_HISTOR  NOT LIKE '%Baixa Automatica / Lote%'  " + CRLF
    cQry += "  AND SE5.E5_BANCO BETWEEN '" + mv_par22 + "' AND '" + mv_par23 + "' "      + CRLF
    cQry += "  AND NOT EXISTS "
	cQry += "   ( SELECT 1 ESTORNO FROM " +RetSqlName("SE5") + " XSE5 " + CRLF
    cQry += "	  WHERE XSE5.E5_FILIAL = SE5.E5_FILIAL AND XSE5.E5_PREFIXO = SE5.E5_PREFIXO AND XSE5.E5_NUMERO = SE5.E5_NUMERO AND " + CRLF
	cQry += "     XSE5.E5_PARCELA = SE5.E5_PARCELA AND XSE5.E5_TIPO = SE5.E5_TIPO AND XSE5.E5_CLIFOR = SE5.E5_CLIFOR AND " + CRLF
	cQry += "     XSE5.E5_LOJA = SE5.E5_LOJA AND XSE5.E5_SEQ = SE5.E5_SEQ AND XSE5.E5_TIPODOC = 'ES' AND XSE5.D_E_L_E_T_<>'*' " + CRLF
	cQry += "   ) " + CRLF
 	cQry += "ORDER BY " + cOrderBy 	+ CRLF
	 		
ENDIF

// IF MV_PAR01 == 1 //TITULOS A PAGAR
// 	cQry := "SELECT " + CRLF
// 	cQry += "  SE2.E2_FILIAL, SE2.E2_FORNECE, SE2.E2_LOJA, SA2.A2_NOME,  SE2.E2_PREFIXO, SE2.E2_NUM, SE2.E2_PARCELA, " + CRLF
// 	cQry += "  SE2.E2_EMISSAO, SE2.E2_VENCREA, ISNULL(SEZ.EZ_CCUSTO,SE2.E2_CCD) CC, CTT.CTT_DESC01, "   + CRLF
// 	cQry += "  ISNULL(SEZ.EZ_ITEMCTA,SE2.E2_ITEMD) AS ITEMCTA, CTD_DESC01 AS DSITEMCTA, "    + CRLF
// 	cQry += "  ISNULL(SEZ.EZ_CLVL,SE2.E2_CLVLDB) AS CLVL, CTH_DESC01 AS DSCLVL, "    + CRLF
// 	cQry += "  CASE WHEN SE2.E2_MOEDA <> 1 THEN	(SE2.E2_VALOR * SE2.E2_TXMOEDA ) ELSE SE2.E2_VALOR END E2_VALOR, " + CRLF
// 	cQry += "  ISNULL(SEV.EV_NATUREZ,SE2.E2_NATUREZ) NATUREZ, SED.ED_DESCRIC, SE2.E2_EMISSAO DTBAIXA, 0 VLRJURMUL,0 VLCORRE, 0 VLDESCO, "   + CRLF
// 	cQry += "  ((CASE WHEN SE2.E2_MOEDA <> 1 THEN	(SE2.E2_VALOR * SE2.E2_TXMOEDA ) ELSE SE2.E2_VALOR END * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1)) VLRRATE, " + CRLF
// 	cQry += "  SE2.E2_HIST HISTORICO, CASE WHEN SE2.E2_MOEDA <> 1 THEN (SE2.E2_SALDO * SE2.E2_TXMOEDA) ELSE SE2.E2_SALDO END E2_SALDO,ISNULL(SEZ.EZ_CONTA,SE2.E2_CONTAD) CONTACTB "   + CRLF
// 	cQry += "FROM " + RetSqlName("SE2") + " SE2 "     + CRLF
// 	cQry += "	INNER JOIN " + RetSqlName("SA2") + " SA2 ON " + CRLF
// 	cQry += "		    SA2.A2_FILIAL  = '" + xFilial("SA2") + "' " + CRLF
// 	cQry += "	    AND SA2.A2_COD     = SE2.E2_FORNECE " + CRLF
// 	cQry += "	    AND SA2.A2_LOJA    = SE2.E2_LOJA  " + CRLF
// 	cQry += "		AND SA2.D_E_L_E_T_ = ' ' "
// 	cQry += "	LEFT JOIN " + RetSqlName("SEV") + " SEV ON " + CRLF
// 	cQry += "	        SEV.EV_FILIAL  = SE2.E2_FILIAL " + CRLF
// 	cQry += "	    AND SEV.EV_PREFIXO = SE2.E2_PREFIXO " + CRLF
// 	cQry += "	    AND SEV.EV_NUM     = SE2.E2_NUM   " + CRLF
// 	cQry += "	    AND SEV.EV_PARCELA = SE2.E2_PARCELA " + CRLF
// 	cQry += "	    AND SEV.EV_TIPO    = SE2.E2_TIPO " + CRLF
// 	cQry += "	    AND SEV.EV_CLIFOR  = SE2.E2_FORNECE " + CRLF
// 	cQry += "	    AND SEV.EV_LOJA    = SE2.E2_LOJA " + CRLF
// 	cQry += "	    AND SEV.EV_IDENT   = '1' "  + CRLF //RATEIO NA EMISSAO DO TITULO
// 	cQry += "		AND SEV.D_E_L_E_T_ = ' ' "
// 	cQry += "	LEFT JOIN " + RetSqlName("SEZ") + " SEZ ON " + CRLF
// 	cQry += "	        SEZ.EZ_FILIAL  = SEV.EV_FILIAL " + CRLF
// 	cQry += "	    AND SEZ.EZ_PREFIXO = SEV.EV_PREFIXO " + CRLF
// 	cQry += "	    AND SEZ.EZ_NUM     = SEV.EV_NUM " + CRLF
// 	cQry += "	    AND SEZ.EZ_PARCELA = SEV.EV_PARCELA " + CRLF
// 	cQry += "	    AND SEZ.EZ_TIPO    = SEV.EV_TIPO " + CRLF
// 	cQry += "	    AND SEZ.EZ_CLIFOR  = SEV.EV_CLIFOR " + CRLF
// 	cQry += "	    AND SEZ.EZ_LOJA    = SEV.EV_LOJA " + CRLF
// 	cQry += "	    AND SEZ.EZ_NATUREZ = SEV.EV_NATUREZ "  + CRLF
// 	cQry += "	    AND SEZ.EZ_IDENT   = '1' " + CRLF
// 	cQry += "		AND SEZ.D_E_L_E_T_ = ' ' " + CRLF
// 	cQry += "	LEFT JOIN " + RetSqlName("CTT") + " CTT ON " + CRLF
// 	cQry += "	    CTT.CTT_FILIAL = '" + xFilial("CTT") + "' " + CRLF
// 	cQry += "   	AND CTT.CTT_CUSTO  = CASE WHEN ISNULL(SEZ.EZ_CCUSTO,' ') = ' ' THEN SE2.E2_CCD ELSE SEZ.EZ_CCUSTO END " + CRLF
// 	cQry += "		AND CTT.D_E_L_E_T_ = ' ' " + CRLF
// 	cQry += "	LEFT JOIN " + RetSqlName("SED") + " SED ON " + CRLF
// 	cQry += "		SED.ED_FILIAL  = '" + xFilial("SED") + "'" + CRLF
// 	cQry += "		AND SED.ED_CODIGO  = CASE WHEN ISNULL(SEV.EV_NATUREZ,' ') = ' ' THEN SE2.E2_NATUREZ ELSE SEV.EV_NATUREZ END " + CRLF
// 	cQry += "		AND SED.D_E_L_E_T_ = ' ' " + CRLF
// 	cQry += "WHERE " + CRLF
// 	cQry += "  SE2.E2_FILIAL BETWEEN '" + MV_PAR25 + "' AND '" + MV_PAR26 + "'  AND SE2.D_E_L_E_T_ = ' ' "    + CRLF
// 	cQry += "  AND SE2.E2_SALDO > 0 "  + CRLF  //titulos com saldo a pagar   + CRLF
// 	cQry += "  AND SE2.E2_PREFIXO  BETWEEN '" + mv_par02 + "' AND '" + mv_par03 + "' " + CRLF
// 	cQry += "  AND SE2.E2_NUM      BETWEEN '" + mv_par04 + "' AND '" + mv_par05 + "' " + CRLF
// 	cQry += "  AND SE2.E2_TIPO   <> 'PR' " + CRLF
// 	cQry += "  AND SE2.E2_TIPO     BETWEEN '" + mv_par06 + "' AND '" + mv_par07 + "' " + CRLF
// 	cQry += "  AND SE2.E2_EMISSAO  BETWEEN '" + dtos(mv_par08) + "' AND '" + DtoS(mv_par09) + "' " + CRLF
// 	cQry += "  AND SE2.E2_VENCREA  BETWEEN '" + dtos(mv_par10) + "' AND '" + DtoS(mv_par11) + "' " 	 + CRLF
// 	cQry += "  AND ( (SEV.EV_PERC IS NULL AND SE2.E2_NATUREZ  BETWEEN '" + mv_par14 + "' AND '" + mv_par15 + "') OR " + CRLF
	
//   	//cQry += "        (SEV.EV_PERC IS NOT NULL AND SEV.EV_NATUREZ BETWEEN '" + mv_par14 + "' AND '" + mv_par15 + ") "

//   	cQry += "        (SEV.EV_PERC IS NOT NULL AND EXISTS (SELECT 1 FROM " + RetSqlName("SEV") + " SEVAUX " + CRLF
//   	cQry += "           WHERE SEVAUX.R_E_C_N_O_ = SEV.R_E_C_N_O_ AND SEVAUX.EV_NATUREZ BETWEEN '" + mv_par14 + "' AND '" + mv_par15 + "')) "  + CRLF
// 	cQry += "       ) "		
// 	cQry += "  AND SE2.E2_FORNECE  BETWEEN '" + mv_par16 + "' AND '" + mv_par18 + "' " + CRLF
//     cQry += "  AND SE2.E2_LOJA     BETWEEN '" + mv_par17 + "' AND '" + mv_par19 + "' "	 + CRLF
// 	cQry += "  AND ((SEZ.EZ_PERC IS NULL AND SE2.E2_CCD  BETWEEN '" + mv_par20 + "' AND '" + mv_par21 + "') OR " + CRLF
//    	//cQry += "       (SEZ.EZ_PERC IS NOT NULL AND SEZ.EZ_CCUSTO BETWEEN '" + mv_par20 + "' AND '" + mv_par21 + ") " + CRLF
//    	cQry += "       (SEZ.EZ_PERC IS NOT NULL AND EXISTS (SELECT 1 FROM " + RetSqlName("SEZ") + " SEZAUX " + CRLF
//     cQry += "          	WHERE SEZAUX.R_E_C_N_O_ = SEZ.R_E_C_N_O_ AND SEZAUX.EZ_CCUSTO BETWEEN '" + mv_par20 + "' AND '" + mv_par21 + "')) " + CRLF
//     cQry += "       ) " + CRLF
//     cQry += "  AND SE2.E2_PORTADO BETWEEN '" + mv_par22 + "' AND '" + mv_par23 + "' "    + CRLF
//     cQry += "ORDER BY " + cOrderBy  + CRLF           
    
// ELSE // TITULOS PAGOS 
	
// 	cQry := "SELECT " + CRLF
// 	cQry += "  SE2.E2_FILIAL, SE2.E2_FORNECE, SE2.E2_LOJA, SA2.A2_NOME, SE2.E2_PREFIXO, SE2.E2_NUM, SE2.E2_PARCELA, " + CRLF
// 	cQry += "  SE2.E2_EMISSAO, SE2.E2_VENCREA,  ISNULL(SEZ.EZ_CCUSTO,SE2.E2_CCD) CC, CTT.CTT_DESC01, "    + CRLF
// 	cQry += "  ISNULL(SEZ.EZ_ITEMCTA,SE2.E2_ITEMD) AS ITEMCTA, CTD_DESC01 AS DSITEMCTA, "    + CRLF
// 	cQry += "  ISNULL(SEZ.EZ_CLVL,SE2.E2_CLVLDB) AS CLVL, CTH_DESC01 AS DSCLVL, "    + CRLF
// 	cQry += "  CASE WHEN SE2.E2_MOEDA <> 1 THEN	(SE2.E2_VALOR * SE2.E2_TXMOEDA ) ELSE SE2.E2_VALOR END E2_VALOR, "   + CRLF
// 	cQry += "  CASE WHEN SE2.E2_MOEDA <> 1 THEN (SE2.E2_SALDO * SE2.E2_TXMOEDA) ELSE SE2.E2_SALDO END E2_SALDO, "   + CRLF	
// 	cQry += "  ISNULL(SEV.EV_NATUREZ,SE2.E2_NATUREZ) NATUREZ, SED.ED_DESCRIC,  "    + CRLF
// 	cQry += "  SE5.E5_TIPODOC, SE5.E5_MOTBX, SE5.E5_DATA DTBAIXA, ((SE5.E5_VLJUROS + SE5.E5_VLMULTA) * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1) VLRJURMUL, " + CRLF
// 	cQry += "  (SE5.E5_VLDESCO * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1) VLDESCO, "   + CRLF
// 	cQry += "  (SE5.E5_VLCORRE * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1) VLCORRE, "   + CRLF
// 	cQry += "  ISNULL(SEZ.EZ_CONTA,SE2.E2_CONTAD) CONTACTB, "   + CRLF

//     //cQry += "  ((SE5.E5_VALOR * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1)) + (((SE5.E5_VLJUROS + SE5.E5_VLMULTA) * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1)) "
// 	//cQry += "   - ((SE5.E5_VLDESCO * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1)) VLRRATE, "
//    	//cQry += "  ((((SE5.E5_VALOR + SE5.E5_VLJUROS + SE5.E5_VLMULTA) - SE5.E5_VLDESCO) * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1)) VLRRATE, " 	
//    	cQry += "  (SE5.E5_VALOR * ISNULL(SEV.EV_PERC,1)) * ISNULL(SEZ.EZ_PERC,1) VLRRATE, " + CRLF
   	
// 	if mv_par24 == 1 //historico da emissao
//  		cQry += "  SE2.E2_HIST HISTORICO " + CRLF
// 	else
//  		cQry += "  SE5.E5_HISTOR HISTORICO " + CRLF
//  	endif	
// 	cQry += "FROM " + RetSqlName("SE2") + " SE2 "     + CRLF
// 	cQry += "	INNER JOIN " + RetSqlName("SE5") + " SE5 ON " + CRLF
// 	cQry += "       SE2.E2_FILIAL  = SE5.E5_FILIAL  " + CRLF
// 	cQry += "       AND SE2.E2_PREFIXO = SE5.E5_PREFIXO " + CRLF
// 	cQry += "       AND SE2.E2_NUM     = SE5.E5_NUMERO  " + CRLF
// 	cQry += "       AND SE2.E2_PARCELA = SE5.E5_PARCELA  " + CRLF
// 	cQry += "       AND SE2.E2_TIPO    = SE5.E5_TIPO " + CRLF
// 	cQry += "       AND SE2.E2_FORNECE = SE5.E5_CLIFOR " + CRLF
// 	cQry += "       AND SE2.E2_LOJA    = SE5.E5_LOJA " + CRLF
// 	cQry += " 	    AND SE5.D_E_L_E_T_ = ' ' "    + CRLF
// 	cQry += "	INNER JOIN " + RetSqlName("SA2") + " SA2 ON " + CRLF
// 	cQry += "		    SA2.A2_FILIAL  = '" + xFilial("SA2") + "' " + CRLF
// 	cQry += "	    AND SA2.A2_COD     = SE2.E2_FORNECE " + CRLF
// 	cQry += "	    AND SA2.A2_LOJA    = SE2.E2_LOJA  " + CRLF
// 	cQry += "		AND SA2.D_E_L_E_T_ = ' ' " + CRLF
// 	cQry += "	LEFT JOIN " + RetSqlName("SEV") + " SEV ON " + CRLF
// 	cQry += "	        SEV.EV_FILIAL  = SE2.E2_FILIAL " + CRLF
// 	cQry += "	    AND SEV.EV_PREFIXO = SE2.E2_PREFIXO " + CRLF
// 	cQry += "	    AND SEV.EV_NUM     = SE2.E2_NUM   " + CRLF
// 	cQry += "	    AND SEV.EV_PARCELA = SE2.E2_PARCELA " + CRLF
// 	cQry += "	    AND SEV.EV_TIPO    = SE2.E2_TIPO " + CRLF
// 	cQry += "	    AND SEV.EV_CLIFOR  = SE2.E2_FORNECE " + CRLF
// 	cQry += "	    AND SEV.EV_LOJA    = SE2.E2_LOJA " + CRLF
// 	cQry += "	    AND SEV.EV_IDENT   = '1' "  + CRLF //RATEIO NA EMISSAO DO TITULO
// 	cQry += "		AND SEV.D_E_L_E_T_ = ' ' " + CRLF
// 	cQry += "	LEFT JOIN " + RetSqlName("SEZ") + " SEZ ON " + CRLF 
// 	cQry += "	        SEZ.EZ_FILIAL  = SEV.EV_FILIAL " + CRLF
// 	cQry += "	    AND SEZ.EZ_PREFIXO = SEV.EV_PREFIXO " + CRLF
// 	cQry += "	    AND SEZ.EZ_NUM     = SEV.EV_NUM " + CRLF
// 	cQry += "	    AND SEZ.EZ_PARCELA = SEV.EV_PARCELA " + CRLF
// 	cQry += "	    AND SEZ.EZ_TIPO    = SEV.EV_TIPO " + CRLF
// 	cQry += "	    AND SEZ.EZ_CLIFOR  = SEV.EV_CLIFOR " + CRLF
// 	cQry += "	    AND SEZ.EZ_LOJA    = SEV.EV_LOJA " + CRLF
// 	cQry += "	    AND SEZ.EZ_NATUREZ = SEV.EV_NATUREZ " + CRLF
// 	cQry += "	    AND SEZ.EZ_IDENT   = '1' " + CRLF
// 	cQry += "		AND SEZ.D_E_L_E_T_ = ' ' " + CRLF
// 	cQry += "	LEFT JOIN " + RetSqlName("CTT") + " CTT ON " + CRLF
// 	cQry += "	    CTT.CTT_FILIAL = '" + xFilial("CTT") + "' " + CRLF
// 	cQry += "   	AND CTT.CTT_CUSTO  = CASE WHEN ISNULL(SEZ.EZ_CCUSTO,' ') = ' ' THEN SE2.E2_CCD ELSE SEZ.EZ_CCUSTO END " + CRLF
// 	cQry += "		AND CTT.D_E_L_E_T_ = ' ' " + CRLF
// 	cQry += "	LEFT JOIN " + RetSqlName("SED") + " SED ON " + CRLF
// 	cQry += "		SED.ED_FILIAL  = '" + xFilial("SED") + "'" + CRLF
// 	cQry += "		AND SED.ED_CODIGO  = CASE WHEN ISNULL(SEV.EV_NATUREZ,' ') = ' ' THEN SE2.E2_NATUREZ ELSE SEV.EV_NATUREZ END " + CRLF
// 	cQry += "		AND SED.D_E_L_E_T_ = ' ' "   + CRLF

// 	cQry += "	LEFT JOIN " + RetSqlName("CTD") + " CTD ON " + CRLF  //ITEM CONTABIL
// 	cQry += "	    CTD.CTD_FILIAL = '" + xFilial("CTD") + "' " + CRLF
// 	cQry += "		AND CTD.D_E_L_E_T_ = ' ' "   + CRLF
// 	cQry += "		AND CTD.CTD_ITEM  = CASE WHEN ISNULL(SEZ.EZ_ITEMCTA,' ') = ' ' THEN SE2.E2_ITEMD ELSE SEZ.EZ_ITEMCTA END " + CRLF


// 	cQry += "	LEFT JOIN " + RetSqlName("CTH") + " CTH ON " + CRLF  //CLASSE DE VLR
// 	cQry += "	    CTH.CTH_FILIAL = '" + xFilial("CTH") + "' " + CRLF
// 	cQry += "		AND CTH.D_E_L_E_T_ = ' ' "   + CRLF
// 	cQry += "		AND CTH.CTH_CLVL  = CASE WHEN ISNULL(SEZ.EZ_CLVL,' ') = ' ' THEN SE2.E2_CLVLDB ELSE SEZ.EZ_CLVL END " + CRLF

// 	cQry += "WHERE " + CRLF
// 	cQry += "  SE2.E2_FILIAL BETWEEN '" + MV_PAR25 + "' AND '" + MV_PAR26 + "'  AND SE2.D_E_L_E_T_ = ' ' "    + CRLF
// 	cQry += "  AND SE2.E2_PREFIXO  BETWEEN '" + mv_par02 + "' AND '" + mv_par03 + "' " + CRLF
// 	cQry += "  AND SE2.E2_NUM      BETWEEN '" + mv_par04 + "' AND '" + mv_par05 + "' " + CRLF
// 	cQry += "  AND SE2.E2_TIPO   <> 'PR' " + CRLF
// 	cQry += "  AND SE2.E2_TIPO     BETWEEN '" + mv_par06 + "' AND '" + mv_par07 + "' " + CRLF
// 	cQry += "  AND SE2.E2_EMISSAO  BETWEEN '" + dtos(mv_par08) + "' AND '" + DtoS(mv_par09) + "' " + CRLF
// 	cQry += "  AND SE2.E2_VENCREA  BETWEEN '" + dtos(mv_par10) + "' AND '" + DtoS(mv_par11) + "' " 	  + CRLF
// 	cQry += "  AND SE5.E5_DATA     BETWEEN '" + dtos(mv_par12) + "' AND '" + DtoS(mv_par13) + "' " 	 + CRLF
// 	cQry += "  AND ((SEV.EV_PERC IS NULL AND SE2.E2_NATUREZ  BETWEEN '" + mv_par14 + "' AND '" + mv_par15 + "') OR " + CRLF
// 	cQry += "       (SEV.EV_PERC IS NOT NULL AND EXISTS (SELECT 1 FROM " + RetSqlName("SEV") + " SEVAUX " + CRLF
// 	cQry += "           WHERE SEVAUX.R_E_C_N_O_ = SEV.R_E_C_N_O_ AND SEVAUX.EV_NATUREZ BETWEEN '" + mv_par14 + "' AND '" + mv_par15 + "')) "  + CRLF
// 	cQry += "       ) "		 + CRLF
// 	cQry += "  AND SE2.E2_FORNECE  BETWEEN '" + mv_par16 + "' AND '" + mv_par18 + "' " + CRLF
//     cQry += "  AND SE2.E2_LOJA     BETWEEN '" + mv_par17 + "' AND '" + mv_par19 + "' "	 + CRLF
// 	cQry += "  AND ((SEZ.EZ_PERC IS NULL AND SE2.E2_CCD  BETWEEN '" + mv_par20 + "' AND '" + mv_par21 + "') OR " + CRLF
// 	cQry += "       (SEZ.EZ_PERC IS NOT NULL AND EXISTS (SELECT 1 FROM " + RetSqlName("SEZ") + " SEZAUX " + CRLF
//     cQry += "          	WHERE SEZAUX.R_E_C_N_O_ = SEZ.R_E_C_N_O_ AND SEZAUX.EZ_CCUSTO BETWEEN '" + mv_par20 + "' AND '" + mv_par21 + "')) " + CRLF
//     cQry += "       ) "    + CRLF
// //    cQry += "  AND SE5.E5_TIPODOC IN ( 'VL','V2','BA','RA','PA','CP' ) " //NOT IN ('ES','DC','D2','JR','J2','TL','MT','M2','CM','C2','TR','TE','E2') " + CRLF
// 	cQry += "  AND SE5.E5_SITUACA  NOT IN ('C','E','X')  " + CRLF
// 	cQry += "  AND SE5.E5_TIPODOC NOT IN ('CM','MT','JR','DC') " + CRLF
// 	cQry += "  AND ((SE5.E5_TIPODOC = 'CD' AND SE5.E5_VENCTO <= SE5.E5_DATA) OR (SE5.E5_TIPODOC <> 'CD')) " + CRLF
// 	cQry += "   		AND SE5.E5_HISTOR  NOT LIKE '%Baixa Automatica / Lote%'  " + CRLF
//     cQry += "  AND SE5.E5_BANCO BETWEEN '" + mv_par22 + "' AND '" + mv_par23 + "' "      + CRLF
//     cQry += "  AND NOT EXISTS " //verifica se a baixa foi estornada: + CRLF
// 	cQry += "   ( SELECT 1 ESTORNO FROM " +RetSqlName("SE5") + " XSE5 " + CRLF
//     cQry += "	  WHERE XSE5.E5_FILIAL = SE5.E5_FILIAL AND XSE5.E5_PREFIXO = SE5.E5_PREFIXO AND XSE5.E5_NUMERO = SE5.E5_NUMERO AND " + CRLF
// 	cQry += "     XSE5.E5_PARCELA = SE5.E5_PARCELA AND XSE5.E5_TIPO = SE5.E5_TIPO AND XSE5.E5_CLIFOR = SE5.E5_CLIFOR AND " + CRLF
// 	cQry += "     XSE5.E5_LOJA = SE5.E5_LOJA AND XSE5.E5_SEQ = SE5.E5_SEQ AND XSE5.E5_TIPODOC = 'ES' AND XSE5.D_E_L_E_T_<>'*' " + CRLF
// 	cQry += "   ) " + CRLF
//  	cQry += "ORDER BY " + cOrderBy 	+ CRLF
	 		
// ENDIF 

Return

/*/
‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
±±⁄ƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒø±±
±±≥Funáao    ≥ AjustaSX1≥ Autor ≥                       ≥ Data ≥          ±±
±±√ƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒ¥±±
±±≥DescriáÖo ≥ Ajusta as perguntas do SX1                                 ≥±±
±±¿ƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ±±
±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
/*/
Static Function AjustaSX1(cPerg)
Local aAreaAnt := GetArea()
Local aHelpPor := {}
Local aHelpEng := {}
Local aHelpSpa := {}

aHelpPor := {"Informe quais titulos devem"," ser considerados na filtragem do    ","relatÛrio.             "}
PutSX1(cPerg,"01","Titulos","","","mv_ch1","N",1,0,0,"C","","","","","mv_par01","A Pagar","A Pagar","A Pagar","","Pagos","Pagos","Pagos","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o prefixo inicial do titulo a ","ser considerado na filtragem do      ","relatÛrio.             "}
PutSX1(cPerg,"02","Do Prefixo","","","mv_ch2","C",TamSx3("E2_PREFIXO")[1],0,0,"G","","","","","mv_par02","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o prefixo final do titulo a   ","ser considerado na filtragem do      ","relatÛrio.             "}
PutSX1(cPerg,"03","AtÈ Prefixo","","","mv_ch3","C",TamSx3("E2_PREFIXO")[1],0,0,"G","","","","","mv_par03","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o numero inicial do titulo a  ","ser considerado na filtragem do      ","relatÛrio.             "}
PutSX1(cPerg,"04","Do TÌtulo","","","mv_ch4","C",TamSx3("E2_NUM")[1],0,0,"G","","","","","mv_par04","SE2","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o numero final do titulo a ser","considerado na filtragem do          ","relatÛrio.             "}
PutSX1(cPerg,"05","AtÈ TÌtulo","","","mv_ch5","C",TamSx3("E2_NUM")[1],0,0,"G","(MV_PAR05 >= MV_PAR04)","","","","mv_par05","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o tipo inicial do titulo a   ","ser considerado na filtragem do      ","relatÛrio.             "}
PutSX1(cPerg,"06","Do Tipo","","","mv_ch6","C",TamSx3("E2_TIPO")[1],0,0,"G","","","","","mv_par06","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o tipo final do titulo a ser  ","considerado na filtragem do          ","relatÛrio.             "}
PutSX1(cPerg,"07","AtÈ o Tipo","","","mv_ch7","C",TamSx3("E2_TIPO")[1],0,0,"G","","","","","mv_par07","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a data de emiss„o inicial do   ","titulo a ser considerado na          ","filtragem do relatÛrio."}
PutSX1(cPerg,"08","Emiss„o de","","","mv_ch8","D",8,0,0,"G","","","","","mv_par08","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a data de emiss„o final do     ","titulo a ser considerado na          ","filtragem do relatÛrio."}
PutSX1(cPerg,"09","Emiss„o AtÈ","","","mv_ch9","D",8,0,0,"G","(MV_PAR09 >= MV_PAR08)","","","","mv_par09","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a data de vencimento real inici ","al do titulo a ser considerado na          ","filtragem do relatÛrio."}
PutSX1(cPerg,"10","Vencimento de","","","mv_chA","D",8,0,0,"G","","","","","mv_par10","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a data de vencimento real final ","do titulo a ser considerado na          ","filtragem do relatÛrio."}             
PutSX1(cPerg,"11","Vencimento AtÈ","","","mv_chB","D",8,0,0,"G","(MV_PAR11 >= MV_PAR10)","","","","mv_par11","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a data de baixa inicial do    ","titulo a ser considerado na          ","filtragem do relatÛrio."}
PutSX1(cPerg,"12","Da Data de Baixa","","","mv_chC","D",TamSx3("E2_EMISSAO")[1],0,0,"G","","","","","mv_par12","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a data de baixa final do      ","titulo a ser considerado na          ","filtragem do relatÛrio."}
PutSX1(cPerg,"13","Ate a Data de Baixa","","","mv_chD","D",TamSx3("E2_EMISSAO")[1],0,0,"G","(MV_PAR13 >= MV_PAR12)","","","","mv_par13","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a natureza inicial do titulo  ","a ser considerado na filtragem do    ","relatÛrio.             "}
PutSX1(cPerg,"14","Da Natureza","","","mv_chE","C",TamSx3("E2_NATUREZ")[1],0,0,"G","","SED","","","mv_par14","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a natureza final do titulo a  ","ser considerado na filtragem do      ","relatÛrio.             "}
PutSX1(cPerg,"15","Ate Natureza","","","mv_chF","C",TamSx3("E2_NATUREZ")[1],0,0,"G","","SED","","","mv_par15","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o fornecedor inicial do titulo","a ser considerado na filtragem do    ","relatÛrio.             "}
PutSX1(cPerg,"16","Do Fornecedor","","","mv_chG","C",TamSx3("A2_COD")[1],0,0,"G","","SA2","","","mv_par16","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a loja inicial do fornecedor  ","a ser considerado na filtragem do    ","relatÛrio.             "}
PutSx1(cPerg, "17","Da Loja","","",	"mv_chH","C",TamSx3("A2_LOJA")[1],0,0,"G",,"","","","MV_PAR17","","","","",;
	"","","","","","","","","","",""," ",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o fornecedor final do titulo a","ser considerado na filtragem do      ","relatÛrio.             "}
PutSX1(cPerg,"18","Ate o Fornecedor","","","mv_chI","C",TamSx3("A2_COD")[1],0,0,"G","(MV_PAR18 >= MV_PAR16)","SA2","","","mv_par18","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a loja final do fornecedor    ","a ser considerado na filtragem do    ","relatÛrio.             "}
PutSx1(	cPerg,"19","AtÈ Loja","","","mv_chJ","C",TamSx3("A2_LOJA")[1],0,0,"G","","","","",;
		"mv_par19",,,,,,,,,,,,,,,,,aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o centro de custo inicial     ","a ser considerado na filtragem do    ","relatÛrio.             "}
PutSx1(	cPerg,"20","Do Centro de Custo","","","mv_chK","C",TamSx3("E2_CCD")[1],0,0,"G","","CTT","","",;
		"mv_par20",,,,,,,,,,,,,,,,,aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o centro de custo final       ","a ser considerado na filtragem do    ","relatÛrio.             "}
PutSx1(cPerg, "21","AtÈ Centro de Custo","","",	"mv_chL","C",TamSx3("E2_CCD")[1],0,0,"G","","CTT","","","MV_PAR21","","","","",;
	"","","","","","","","","","",""," ",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o banco inicial do titulo","a ser considerado na filtragem do    ","relatÛrio.             "}
PutSX1(cPerg,"22","Banco de","","","mv_chM","C",TamSx3("A2_COD")[1],0,0,"G","","SA2","","","mv_par22","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe o banco final do titulo","a ser considerado na filtragem do    ","relatÛrio.             "}
PutSX1(cPerg,"23","Banco Ate","","","mv_chN","C",TamSx3("A2_COD")[1],0,0,"G","(MV_PAR23 >= MV_PAR22)","SA2","","","mv_par23","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe qual historico deve"," ser considerado na filtragem do    ","relatÛrio.             "}
PutSX1(cPerg,"24","Historico","","","mv_chO","N",1,0,0,"C","","","","","mv_par24","Da Emiss„o","Da Emiss„o","Da Emiss„o","","Da Baixa","Da Baixa","Da Baixa","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

// Mauro Paladini
// Adicionado as perguntas Filial de/Ate

aHelpPor := {"Informe a filial inicial","",""}
PutSX1(cPerg,"25","Da Filial","","","mv_chp","C",2,0,0,"G","","","","","mv_par25","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

aHelpPor := {"Informe a filial final","",""}
PutSX1(cPerg,"26","Ate Filial","","","mv_chq","C",2,0,0,"G","","","","","mv_par26","","","","","","","","","","","","","","","","",aHelpPor,aHelpEng,aHelpSpa)

RestArea(aAreaAnt)
Return Nil
