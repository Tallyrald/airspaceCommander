   M S B A M L   `   `   `  ���� M  IAirspace_Commander, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Airspace_CommanderAirspace_Commander  #    Airspace_Commander.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:Airspace_Commander     -     �Name$  Airspace_Commander�� � Title$ Airspace Commander��$	��720��$
��1280�� � 
ResizeMode$ NoResize=�   
WinBgColor#��[    WinBorderColor#��[   WinBorderSize#��[  � Icon$ Airspace_Commander.ico�� � 	Resources 5  /Airspace_Commander.ModelToDrawingImageConverter   ModelToDrawingImageConverter��%   &	         .���  � ShowGridLines .  � ColumnDefinitions �� $
��0.8* ��� $
��0.2* �.+��� -   
���   �$
��Left=�$��0��.+��� $��Uniform=�����  �� Path$
 Self� �� 	Converter# [ � $��1��
���   �.+��� -   	 ��Name$	 lbl_ScoreText��$��Score:��$
��Left=�$��	10,10,0,0q�$	��Top=�$	��108��
�������$��Disabled=�$��20(��� -   $	 	lbl_Score��
 �� ContentStringFormat$
 
{0} points��$
��Left=�$��	10,47,0,0q�$	��Top=�$	��121��
�������$��Disabled=�$��20(����� $ Score��� -   $	 lbl_RocketNumText��$��Rockets:��$
��Left=�$��
160,10,0,0q�$	��Top=�$��84��
�������$��Disabled=�$��20(��� -   $	 lbl_RocketNum��$
��Left=�$��160,47,-3,0q�$	��Top=�$��97��
�������$��Disabled=�$��20(����� $ RemainingRockets��� -    ��Name$ btn_Modernize��$��
32,118,0,0q�$	��192��$��24��$
��Left=�$	��Top=�.��" Modernize buildings (+1 max. HP)�� -   $ btn_Renovate��$��
32,148,0,0q�$	��192��$��24��$
��Left=�$	��Top=�.��Renovate buildings (+1 HP)�� -	   $ btn_AddShield��$��
32,178,0,0q�$	��192��$��24��$
��Left=�$	��Top=�.��Add shield to buildings�� -
   $ btn_UpgradeShield��$��
32,207,0,0q�$	��192��$��24��$
��Left=�$	��Top=�.�� Upgrade new(!) shields (+1 HP)�� -   $ btn_EngineResearch��$��
32,270,0,0q�$��80��$��25��$
��Left=�$	��Top=�.��Research next�� -   $	 lbl_EngineResearch��$��Engine��$
��Left=�$��
46,236,0,0q�$	��Top=�$��56��
�������$��Disabled=�$��15(�$��34���� -   $ btn_WarheadResearch��$��80��$��26��$��144,269,0,0q�$
��Left=�$	��Top=�.��Research next�� -   $	 lbl_WarheadResearch��$��Warhead��$
��Left=�$��148,236,0,0q�$	��Top=�$��72��
�������$��Disabled=�$��15(�$��28���� -    ��Name$ cBox_CurrentEngine��$
��Left=�$��23��$��
22,359,0,0q�$	��Top=�$	��100������ $ Engines� �� SelectedItem �� $ SelectedEngine��� -   $	 lbl_CurrentEngine��$��Current engine��$
��Left=�$��
20,320,0,0q�$	��Top=�$	��106��
�������$��Disabled=�$��14(�$��34���� -   $ cBox_CurrentWarhead��$
��Left=�$��23��$��136,359,0,0q�$	��Top=�$	��100������ $ Warheads� �� $ SelectedWarhead��� -   $	 lbl_CurrentWarhead��$��Current warhead��$
��Left=�$��128,320,0,0q�$	��Top=�$	��114��
�������$��Disabled=�$��14(�$��34���� -   $	 lbl_NuclearTimerText��$"��Can fire nuclear rocket in: ��$
��Left=�$��
17,387,0,0q�$	��Top=�$	��166��$��Disabled=�$��14(�$��34������ $ NuclearColor��� -   $	 lbl_NuclearTimer��$
 {0} s��$
��Left=�$��188,387,0,0q�$	��Top=�$��48��$��Disabled=�$��14(�$��34������ $ NuclearTimer����� $ NuclearColor��� -   $	 lbl_EngineResearchCost��$��Engine research:��$
��Left=�$��
-3,447,0,0q�$	��Top=�$	��216��
�������$��Disabled=�$��15(�$��34���� -   $"	 lbl_EngineResearchCostMedium��$��Medium: 50 points��$
��Left=�$��113,447,-15,0q�$	��Top=�$	��156��$��Disabled=�$��15(�$��34������ $ MediumEngineResearch��� -   $!	 lbl_EngineResearchCostLarge��$��Large: 80 points��$
��Left=�$��113,463,-75,0q�$	��Top=�$	��216��$��Disabled=�$��15(�$��34������ $ LargeEngineResearch��� -   $	 lbl_WarheadResearchCost��$��Warhead research:��$
��Left=�$��
-3,484,0,0q�$	��Top=�$	��135��
�������$��Disabled=�$��15(�$��34���� -   $#	 lbl_WarheadResearchCostMedium��$��Medium: 25 points��$
��Left=�$��113,502,-1,0q�$	��Top=�$	��142��$��Disabled=�$��15(�$��34������ $ MediumWarheadResearch��� -   $"	 lbl_WarheadResearchCostLarge��$��Large: 75 points��$
��Left=�$��113,518,0,0q�$	��Top=�$	��123��$��Disabled=�$��15(�$��34������ $ LargeWarheadResearch��� -   $$	 lbl_WarheadResearchCostNuclear��$��Nuclear: 150 points��$
��Left=�$��113,534,-3,0q�$	��Top=�$	��144��$��Disabled=�$��15(�$��34������ $ NuclearWarheadResearch��� -   $	 lbl_Modernize��$%��Modernize buildings: 130 points��$
��Left=�$��
-3,568,0,0q�$	��Top=�$	��247��
�������$��Disabled=�$��15(�$��34���� -   $	 lbl_Renovate��$#��Renovate buildings: 70 points��$
��Left=�$��
-3,586,0,0q�$	��Top=�$	��227��
�������$��Disabled=�$��15(�$��34���� -   $	 lbl_AddShield��$(��"Add shield to buildings: 25 points��$
��Left=�$��
-3,605,0,0q�$	��Top=�$	��244��
�������$��Disabled=�$��15(�$��34���� -   $	 lbl_UpgradeShield��$%��Upgrade new shields: 100 points��$
��Left=�$��
-3,623,0,0q�$	��Top=�$	��239��
�������$��Disabled=�$��15(�$��34��