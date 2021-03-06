VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "BAPT_StringBuilder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'###############################################################################################
'# Copyright (c) 2021 Thomas M�ller                                                            #
'# MIT License  => https://github.com/team-moeller/better-access-pivottable/blob/main/LICENSE  #
'# Version 1.09.10  published: 12.12.2021                                                      #
'###############################################################################################

Option Compare Database
Option Explicit


Private m_String As String

Public Sub Add(ByVal TheString As String)
    m_String = m_String & TheString
End Sub

Public Sub AddLine(ByVal TheString As String)
    m_String = m_String & TheString & vbCrLf
End Sub

Public Sub CutTrailingComma()
    m_String = BAPT.Helper.CutTrailingComma(m_String)
End Sub

Public Function ToString() As String
    ToString = m_String
End Function

