   M S B A M L   `   `   `  ����c  _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity  5   	   G CMediaLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:MediaLibrary.ViewModelsMediaLibrary.ViewModels 5   	   +clr-namespace:MediaLibraryMediaLibrary 5   	   #   MediaLibrary.Views.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   \iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;	viewModel%clr-namespace:MediaLibrary.ViewModels     5   	   ,localclr-namespace:MediaLibrary     5   	   -   5        $
��wind��5   	     � Title$)  #Цифровая медиатека��5
   	   $	��600��6$   $	��800��61   $	��800��6=   $	��600��6L    � DataContext 5      1  +MediaLibrary.ViewModels.MainWindowViewModel  5   
    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $C =pack://application:,,,/Resources/Styles/MainWindowStyles.xaml?�6%   6n   %    5      .��5      ]� ��. .+�5   
   ]� $��Bottom=�6   ��. .+�5      �� $
��Left=�6      FirstButtonCollapseStyle#��[  6+   ��6]   ��  �� ElementName$ 
tabControl���� 5      $��Right=�6     ThirdButtonCollapseStyle#��[ 6,   ��6^   �� $ playerPanel���� 5        SecondButtonCollapseStyle#��[ 6   ��6H   �� $ 
filesPanel��5      ]� 5   
   ��. .+�5      �� -   5        $��
tabControl��5   /   $
��Left=�6   $	��160��6A   .   (System.Windows.Interactivity.Interaction   Triggers 5      /   )System.Windows.Interactivity.EventTrigger  5         	EventName$ SelectionChanged��6%   .   (System.Windows.Interactivity.TriggerBase   Actions. 5      6   0System.Windows.Interactivity.InvokeCommandAction  	   Command	 60   �� *Trees.TabSelectedCommand+
   CommandParameter
 5    ,   �� $ 
tabControl�� �� Path$ SelectedIndex�5!      .@�5#      �� $��Каталоги��6   .��5$      R� -   5        $��trwCatalogs��5$   }     TreeItemStyle#��[ 6     CatalogTreeStyle#��[ 6S   $��5q�6�   ��6�   �� *Trees.CatalogsRoot+��5%      �� 5&       �� ItemsSource 67   �� *CatalogChildren+.R�5'   "   ��  �� Orientation$ 
Horizontal=�6-   .+�5(   &   �� $	��img��6,   $��15��67   $��18��6B   $
��Fill=�6N   ��6]   �� $
 Name�#  MediaLibrary.ToImageConverter   Instance �� 	Converter# Z �� 5*   &   $	��5,0q�6F   ��60   �� *Name+6F   5+   #   5,       5.        5/      $ SelectedItemChanged��6-   . 50   "     	 68   �� *Trees.SelectedCommand+
 51   ,   �� $ trwCatalogs��$ SelectedValue�52      54      55      �� 56      $��Категории��6   .��57      R� -   5        $��trwCategories��57   ~   #��[ 6     CategoryTreeStyle#��[ 6S   $��5q�6�   ��6�   �� *Trees.CategoriesRoot+��58      �� 59       67   �� *
Categories+.R�5:   "   �� ��6,   �� *MediaTypeName+ �� ItemTemplate 5;   "   �� 5<   &   .R�5=   *   �� ��64   �� *Name+5>   '   5@       5B        5C      $ SelectedItemChanged��6-   . 5D   "     	 68   �� *Trees.SelectedCommand+
 6b   �� $ trwCategories��$ SelectedValue�5E      5G      5H      5I      � 5J       � ColumnDefinitions 5K      �� 5L        FilesColumnStyle#��[ 6'   �� 5M        PlayerColumnStyle#��[ 6'   .+�5O      �� $��0��6   $
��Auto=�6n   y�6/   �� $ 
filesPanel��$ 
Visibility�.��5P      �� -   5        $��
filesPanel��5P   1   $��0��6!   .+�5Q      �� $��
 5,20,5,10q�6X   ��6'   �� $ Trees.SelectedValue���5R      �� 5S   "   .R�5T   &   � $��7q�60    � Orientation$ 
Horizontal=�6<    K� IsItemsHost . 6U   5U   #   ��5W      �� 5X   "    � 	Resources 5Y   &    �� 
TargetType �� Property �� Value��%�   '��       �� 5Z   *   " ��60   .�5[   .   ��  � ��$ 13(�6I   �� 5\   .    � ��$ Center=�6T   �� 5]   .    � ��$
 Wrap=�6M   �� 5^   .    � ��$ 5q�6G   5_   +   5`   '   .R�5a   &   ��   BorderStyle#��[ 6-   ._�5b   *   �� $��90��65   $ Vertical=�6@   $��Center=�6W   $��0,10,0,0q�6t    � ContextMenu 5c   .   �� 5d   2   .@�5e   6   m� $��Открыть��6?    m� Command 6P   �� *PlayFileCommand+ m� CommandParameter 6t   �� *File+m� 5f   6   $"��Добавить в базу��6?    6X   �� *SaveFileCommand+ 6|   �� *File+6�   5g   3   .+�5i   .   �� $��70��64   $��70��6?   $
��Fill=�6K   ��6Z   �� $ 	File.Type�# Z �� 5j   .   ��68   �� *	File.Name+5k   +   5l   '   5m   #   5o      5p      5q      �� 5r      -   5        $��playerPanel��5r   W    	 PlayerPanelStyle#��[	 6   $��1��6G   .+�5s      �� -   5        $	��Img��5s   -    K� ZIndex$ 0��6    
 
ImageStyle#��[
 68   ��6\   �� *Media.ImageSource+r� 5t      -   5        $��Media��5t   4   $ 1��6#   64   �� 5u        PlayerButtonsPanelStyle#��[ 6!   .+�5v      �� -	   5         ��Name$ 
playButton��5v   M     PlayerButtonsStyle#��[ 6!   $��Center=�6�   $
��Left=�6�   ��6a   �� *Media.PlayCommand+��6�   �� $ Media��.��5w      �� $
��Fill=�6$   $6��0pack://application:,,,/Resources/Images/play.png��63   5x      �� 5y      -
   5        $ pauseButton��5y   M   #��[ 6!   $��Center=�6�   $��Center=�6�   ��6b   �� *Media.PauseCommand+��6�   �� $ Media��.��5z      �� $
��Fill=�6$   $7��1pack://application:,,,/Resources/Images/pause.png��63   5{      �� 5|      -   5        $ 
stopButton��5|   M   #��[ 6!   $��Center=�6�   $��Right=�6�   ��6a   �� *Media.StopCommand+��6�   �� $ Media��.��5}      �� $
��Fill=�6$   $6��0pack://application:,,,/Resources/Images/stop.png��63   5~      5      5�      5�      5�      5�      5�      