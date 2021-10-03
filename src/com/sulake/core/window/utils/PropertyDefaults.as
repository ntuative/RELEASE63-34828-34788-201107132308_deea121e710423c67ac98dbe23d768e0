package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.Direction;
   import com.sulake.core.window.enum.LinkTarget;
   import flash.text.AntiAliasType;
   import flash.text.GridFitType;
   import flash.text.TextFieldAutoSize;
   
   public class PropertyDefaults
   {
      
      public static const const_1002:String = "antialias_type";
      
      public static const const_857:String = "auto_arrange_items";
      
      public static const const_937:String = "auto_size";
      
      public static const const_1021:String = "bitmap_asset_name";
      
      public static const const_969:String = "direction";
      
      public static const const_1214:String = "display_as_password";
      
      public static const const_995:String = "editable";
      
      public static const const_780:String = "focus_capturer";
      
      public static const const_1170:String = "grid_fit_type";
      
      public static const const_812:String = "handle_bitmap_disposing";
      
      public static const const_1005:String = "link_target";
      
      public static const const_400:String = "spacing";
      
      public static const const_251:String = "margin_left";
      
      public static const const_268:String = "margin_top";
      
      public static const const_258:String = "margin_right";
      
      public static const const_255:String = "margin_bottom";
      
      public static const const_1024:String = "item_array";
      
      public static const const_737:String = "mouse_wheel_enabled";
      
      public static const const_792:String = "pointer_offset";
      
      public static const const_929:String = "resize_on_item_update";
      
      public static const const_869:String = "scale_to_fit_items";
      
      public static const const_930:String = "scroll_step_h";
      
      public static const const_835:String = "scroll_step_v";
      
      public static const const_785:String = "selectable";
      
      public static const const_408:String = "text_color";
      
      public static const const_458:String = "text_style";
      
      public static const const_843:String = "tool_tip_caption";
      
      public static const const_825:String = "tool_tip_delay";
      
      public static const const_1841:String = AntiAliasType.NORMAL;
      
      public static const const_1188:Array = [AntiAliasType.NORMAL,AntiAliasType.ADVANCED];
      
      public static const const_830:Boolean = true;
      
      public static const const_1323:String = TextFieldAutoSize.NONE;
      
      public static const const_1244:Array = [TextFieldAutoSize.NONE,TextFieldAutoSize.LEFT,TextFieldAutoSize.CENTER,TextFieldAutoSize.RIGHT];
      
      public static const const_1216:String = null;
      
      public static const const_1735:String = Direction.DOWN;
      
      public static const const_2021:Array = [Direction.UP,Direction.DOWN,Direction.LEFT,Direction.RIGHT];
      
      public static const const_1232:Boolean = false;
      
      public static const const_1894:Boolean = true;
      
      public static const const_1204:Boolean = false;
      
      public static const const_1176:String = GridFitType.PIXEL;
      
      public static const const_1252:Array = [GridFitType.PIXEL,GridFitType.NONE,GridFitType.SUBPIXEL];
      
      public static const const_1316:Boolean = true;
      
      public static const HTML_LINK_TARGET_VALUE:String = LinkTarget.const_31;
      
      public static const const_861:Array = [LinkTarget.const_31,LinkTarget.name_3,LinkTarget.const_1738,LinkTarget.const_1867,LinkTarget.const_1754,LinkTarget.const_1363];
      
      public static const const_531:int = 0;
      
      public static const const_810:int = 0;
      
      public static const const_768:int = 0;
      
      public static const const_1009:int = 0;
      
      public static const const_1028:int = 0;
      
      public static const const_2016:Array = [];
      
      public static const const_1250:Boolean = true;
      
      public static const const_1736:int = 0;
      
      public static const const_957:Boolean = false;
      
      public static const const_1020:Boolean = false;
      
      public static const const_1239:Number = -1;
      
      public static const const_1182:Number = -1;
      
      public static const const_1235:Boolean = true;
      
      public static const const_908:uint = 0;
      
      public static const const_1918:String = TextStyleManager.const_232;
      
      public static const const_915:Array = TextStyleManager.getStyleNameArrayRef();
      
      public static const const_433:String = "";
      
      public static const const_953:int = 500;
      
      public static const const_2254:PropertyStruct = new PropertyStruct(const_1002,const_1841,PropertyStruct.const_51,false,const_1188);
      
      public static const const_1862:PropertyStruct = new PropertyStruct(const_857,const_830,PropertyStruct.const_38,false);
      
      public static const const_1837:PropertyStruct = new PropertyStruct(const_937,const_1323,PropertyStruct.const_51,false,const_1244);
      
      public static const const_1890:PropertyStruct = new PropertyStruct(const_1021,const_1216,PropertyStruct.const_51,false);
      
      public static const const_1889:PropertyStruct = new PropertyStruct(const_969,const_1735,PropertyStruct.const_51,false,const_2021);
      
      public static const const_1892:PropertyStruct = new PropertyStruct(const_1214,const_1232,PropertyStruct.const_38,false);
      
      public static const const_1898:PropertyStruct = new PropertyStruct(const_995,const_1894,PropertyStruct.const_38,false);
      
      public static const const_1778:PropertyStruct = new PropertyStruct(const_780,const_1204,PropertyStruct.const_38,false);
      
      public static const const_1971:PropertyStruct = new PropertyStruct(const_1170,const_1176,PropertyStruct.const_51,false,const_1252);
      
      public static const const_1804:PropertyStruct = new PropertyStruct(const_812,const_1316,PropertyStruct.const_38,false);
      
      public static const const_1772:PropertyStruct = new PropertyStruct(const_1005,HTML_LINK_TARGET_VALUE,PropertyStruct.const_51,false,const_861);
      
      public static const const_1400:PropertyStruct = new PropertyStruct(const_400,const_531,PropertyStruct.const_37,false);
      
      public static const const_797:PropertyStruct = new PropertyStruct(const_251,const_810,PropertyStruct.const_37,false);
      
      public static const const_917:PropertyStruct = new PropertyStruct(const_268,const_768,PropertyStruct.const_37,false);
      
      public static const const_870:PropertyStruct = new PropertyStruct(const_258,const_1009,PropertyStruct.const_37,false);
      
      public static const const_866:PropertyStruct = new PropertyStruct(const_255,const_1028,PropertyStruct.const_37,false);
      
      public static const const_1975:PropertyStruct = new PropertyStruct(const_1024,const_2016,PropertyStruct.const_156,false);
      
      public static const const_1787:PropertyStruct = new PropertyStruct(const_737,const_1250,PropertyStruct.const_38,false);
      
      public static const const_1845:PropertyStruct = new PropertyStruct(const_929,const_957,PropertyStruct.const_38,false);
      
      public static const const_1995:PropertyStruct = new PropertyStruct(const_792,const_1736,PropertyStruct.const_37,false);
      
      public static const const_1737:PropertyStruct = new PropertyStruct(const_869,const_1020,PropertyStruct.const_38,false);
      
      public static const const_1909:PropertyStruct = new PropertyStruct(const_930,const_1239,PropertyStruct.const_132,false);
      
      public static const const_1810:PropertyStruct = new PropertyStruct(const_835,const_1182,PropertyStruct.const_132,false);
      
      public static const const_2001:PropertyStruct = new PropertyStruct(const_785,const_1235,PropertyStruct.const_38,false);
      
      public static const const_1299:PropertyStruct = new PropertyStruct(const_408,const_908,PropertyStruct.const_153,false);
      
      public static const const_1395:PropertyStruct = new PropertyStruct(const_458,const_1918,PropertyStruct.const_51,false,const_915);
      
      public static const const_1803:PropertyStruct = new PropertyStruct(const_843,const_433,PropertyStruct.const_51,false);
      
      public static const TOOL_TIP_DELAY:PropertyStruct = new PropertyStruct(const_825,const_953,PropertyStruct.const_305,false);
       
      
      public function PropertyDefaults()
      {
         super();
      }
   }
}
