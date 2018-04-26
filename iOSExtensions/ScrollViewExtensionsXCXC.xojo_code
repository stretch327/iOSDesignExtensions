#tag Module
Protected Module ScrollViewExtensionsXCXC
	#tag Method, Flags = &h0, Description = 466C617368657320746865207363726F6C6C20696E64696361746F727320746F20696E6469636174652074686174207468697320766965772063616E206265207363726F6C6C65642E202855736520776974682061203230306D732074696D657229
		Sub FlashScrollIndicatorsXC(extends scroll As iOSScrollableArea)
		  Declare Sub flashScrollIndicators_ Lib "UIKit.framework" selector "flashScrollIndicators" (obj_id As ptr)
		  flashScrollIndicators_(scroll.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526574756E73207468652063757272656E74207363726F6C6C20706F736974696F6E
		Function ScrollPositionXC(extends scroll As iOSScrollableArea) As Xojo.Core.Point
		  
		  Dim offset As xojo.core.point
		  
		  
		  Declare Function ContentOffset_ Lib "UIKit.framework" selector "contentOffset" (obj_id As ptr) As ExtensionsXC.xcCGPoint
		  Dim pt As ExtensionsXC.xcCGPoint = ContentOffset_(scroll.Handle)
		  offset = New Xojo.Core.Point(pt.x, pt.y)
		  
		  
		  
		  Return offset
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C7320746F2074686520646566696E656420636F6F7264696E61746573
		Sub ScrollToXC(extends scroll as iOSScrollableArea, point As Xojo.Core.Point, animated As Boolean = True)
		  
		  Declare Sub setContentOffsetAnimated Lib "UIKit.framework" selector "setContentOffset:animated:" (id As ptr, value As ExtensionsXC.xcCGPoint, animated As Boolean)
		  
		  Dim pt As ExtensionsXC.xcCGPoint
		  pt.x = point.X
		  pt.y = point.Y
		  
		  setContentOffsetAnimated(scroll.Handle, pt, animated)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBouncesXC(extends scroll As iOSScrollableArea, value As Boolean)
		  
		  declare sub bounces_ lib "UIKit.framework" selector "setBounces:" (obj_id as ptr, value as Boolean)
		  bounces_(scroll.handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetIndicatorStyleXC(extends scroll as iOSScrollableArea, value as ScrollViewExtensionsXCXC.UIScrollViewIndicatorStyle)
		  
		  Declare Sub setIndicatorStyle_ Lib "UIKit.framework" selector "setIndicatorStyle:" (obj_id As ptr, value As ScrollViewExtensionsXCXC.UIScrollViewIndicatorStyle)
		  setIndicatorStyle_(scroll.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4966207468652076616C7565206F6620746869732070726F706572747920697320547275652C20746865207363726F6C6C20766965772073746F7073206F6E206D756C7469706C6573206F6620746865207363726F6C6C2076696577E280997320626F756E6473207768656E207468652075736572207363726F6C6C732E
		Sub SetPagingEnabledXC(extends scroll As iOSScrollableArea, value As Boolean)
		  
		  Declare Sub setPagingEnabled lib "UIKit.framework" selector "setPagingEnabled:" (id as ptr, value as Boolean)
		  setPagingEnabled scroll.Handle, value
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScrollEnabledXC(extends scroll as iOSScrollableArea, value As Boolean)
		  
		  Declare Sub scrollEnabled Lib UIKitLib selector "setScrollEnabled:" (obj_id As ptr, value As Boolean)
		  
		  scrollenabled(scroll.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScrollsToTopXC(extends scroll as iOSScrollableArea, value As Boolean)
		  
		  Declare Sub scrollsToTop_ Lib "UIKit.framework" selector "setScrollsToTop:" (obj_id As ptr, value As Boolean)
		  
		  scrollsToTop_(scroll.Handle, value)
		End Sub
	#tag EndMethod


	#tag Enum, Name = UIScrollViewIndicatorStyle, Type = Integer, Flags = &h1
		default = 0
		  black
		white
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
