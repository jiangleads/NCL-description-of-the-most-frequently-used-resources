等值线（contour）
res@cnFillOn 								= True 	;是否打开填色图
res@cnFillMode 							=				;设置填色图类型，如"Areafill"，"RasterFill"
res@cnFillColors 						=	 (/,,,/)			;设置填色颜色
res@cnFillPatterns 					=       ;填色图填充方案。默认是实心填充
res@cnLinesOn 							= True ;是否绘制等值线
res@cnLineThicknessF 				=	2.		;设置等值线粗细
res@cnLineColors 						= 			;设置等值线颜色
res@cnLineLabelsOn 					= True ;是否打开等值线标签
res@cnLineLabelFontHeightF 	= 0.015 ;等值线标签字体大小
res@cnInfoLabelOn 					= True  ;是否打开等值线信息标签!!!!重要！！！
res@cnLevelSelectionMode   ;控制等值线的levels模式,默认为“AutomaticLevels”(自动设置)
	;其他常用格式：
	;指定等值线
	res@cnLevelSelectionMode 	= "ExplicitLevels"
	res@cnLevels 							= (/3,5,7,9,10,45/)
	;设定最大值最小值及间隔
	res@cnLevelSelectionMode 	=	"ManualLevels"
	res@cnMinLevelValF 				=	5
	res@cnMaxLevelValF 				= 35
	res@cnLevelSpacingF 			= 5
	sst@_Fillvalue =-999    ;缺测
	
	
流线(streamline)
res@stArrowLengthF 				 	=	0.008	; 流线箭头大小
res@stArrowStride 					= 2 		; 每多少个格点画一个箭头
res@stLineColor 						= "red" ; 流线颜色
res@stLineThicknessF 				=	2.		; 流线粗细
res@stMinArrowSpacingF 			=	0.035 ; 调整同一根流线上箭头之间距离
res@stMinDistanceF 					= 0.03  ; 调整流线之间的距离
res@stMinLineSpacingF 			= 0.005


矢量箭头
res@vcGlyphStyle 						=	"LineArrow"/"WindBarb"/"CurlyVector" ; Vector样式
res@vcRefLengthF 						=	0.045 		; 定义矢量参考箭头的长度
res@vcRefMagnitudeF 				= 20.				; 定义矢量参考箭头的量
res@vcMinMagnitudeF 				=	5.				; 设置要绘制矢量箭头的最小值
res@vcMinDistanceF 					= 0.017			; 控制Vector的稀疏
res@vcRefAnnoOn 						= True 			; 打开矢量参考箭头
res@vcRefAnnoOrthogonalPosF = -1. 			; 参考箭头的垂直位置
res@vcRefAnnoParallelPosF 	= 0.5 			; 参考箭头的水平位置
res@vcRefAnnoString1On 			= True 			; 打开参考箭头注解文本1
res@vcRefAnnoString2On 			= True 			; 打开参考箭头注解文本2
res@vcRefAnnoFontHeightF 		= 0.015 		; 参考箭头注解文本的字体大小
res@vcRefAnnoString1 				= "700 hPa" ; 参考箭头注解文本1
res@vcRefAnnoString2 				= "20 m/s"  ; 参考箭头注解文本2
res@vcLineArrowColor 				= "red" 		;统一设置LineArrow或CurlyVector的颜色
res@vcWindBarbColor 				= "blue" 		; 绘制风羽图颜色
res@vcMapDirection 					= False 		; 使X/Y方向在不同的参考系（如垂直剖面气压坐标）


XY curves
res@xyDashPatterns 					= (/1,2,3/) ; 分别设定XY曲线的样式
res@xyLineThicknesses 			= (/1,2,2/) ; 分别设定XY曲线的粗细
res@xyLineColors 						= (/"red","blue"/); 分别设定XY曲线的颜色
res@xyMarkLineModes 				= (/"Lines","Markers","Marklines"/); 分别设定XY曲线只画线、只画标记或都画
res@xyMarkers 							=	(/1,2,3/) ; 分别设定Markers的样式
res@xyMarkerColors 					=	(/3,4,5/) ; 分别设定Markers的颜色
res@xyMarkerSizes 					= (/0.01,0.02/) ; 分别设定Markers的大小
 ;如属性不带“a”的表示统一设置属性，如：
res@xyDashPattern 					= 2					; 统一设定XY曲线的样式
res@xyLineThicknessF 				= 2. 				; 统一设定XY曲线的粗细
res@xyLineColor 						= "red" 		; 统一设定XY曲线的颜色
res@xyMarkLineMode 					=	"MarkLines" ; 统一设定XY曲线只画线、只画标记或都画
res@xyMarker 								= 3 				; 统一设定Markers的样式
res@xyMarkerColor 					= 4 				; 统一设定Markers的颜色
res@xyMarkerSizeF 					= 0.03 			; 统一设定Markers的大小


GSN高级接口属性

res@gsnAddCyclic 						= True 			; 是否要添加周期点使纬圈完整，不是全球数据设为False

res@gsnMaximize 						= True 			; 在工作台中尽可能大绘图（最大化绘图）
res@gsnDraw 								= True 			; 如果设置为False 则调用gsn函数时暂时不会画到工作台上
res@gsnFrame 								= True 			; 如果设置为False 则调用gsn函数时暂时不翻页
																				; 常与gsnDraw配合用于多图层或一页多图绘图
res@gsnLeftString 					= "left" 		; 设置左侧字符串
res@gsnLeftStringFontHeightF = 0.1
res@gsnCenterString 				= "center"  ; 设置中字符串
res@gsnRightString 					=	"right" 	; 设置右字符串
res@gsnMajorLatSpacing 			= 3 				; 主纬度间隔
res@gsnMajorLonSpacing 			= 3 				; 主经度间隔
res@gsnMinorLatSpacing 			= 1 				; 次纬度间隔
res@gsnMinorLonSpacing 			= 1					; 次经度间隔
res@gsnPanelTop 						= 0.9 			; Panel 最顶位置
res@gsnPanelBottom 					= 0.1 			; Panel 最底位置
res@gsnPanelLeft 						= 0.1 			; Panel 最左位置
res@gsnPanelRight 					= 0.9 			; Panel 最右位置
res@gsnPanelCenter 					= True 			; Panel 居中
res@gsnPanelRowSpec 				= (/2,3/)		; 指定每行子图数
res@gsnPanelFigureStrings 	; 设置每个子图的字符串标注,如:(a),(b) ...
res@gsnPanelLabelBar 				= True 			; 打开一页多图中共用一个色标
res@gsnPolarLabelFontHeightF= .015            ; 经纬度标签大小

res@gsnScalarContour 				= True 			; 调用gsn_csm的Vector/contour函数时，
																				; 第三个场以单独的contour场绘制，并不填充到vector上
res@gsnXRefLine 						= 3 				; XY图中的垂直于X轴的参考线
res@gsnXRefLineColor 				= 5 				; XY图中的垂直于X轴的参考线颜色
res@gsnXRefLineDashPattern 	= 3 				; XY图中的垂直于X轴的参考线样式
res@gsnXRefLineThicknessF 	= 2 				; XY图中的垂直于X轴的参考线粗细
res@gsnYRefLine 						= 3 				; XY图中的垂直于Y轴的参考线
res@gsnYRefLineColor 				= 5 				; XY图中的垂直于Y轴的参考线颜色
res@gsnYRefLineDashPattern 	= 3 				; XY图中的垂直于Y轴的参考线样式
res@gsnYRefLineThicknessF 	= 2 				; XY图中的垂直于Y轴的参考线粗细
res@gsnXYBarChart 					= True 			; XY图为柱状图
res@gsnAboveYRefLineBarPatterns 				; Y参考线之上柱状图样式
res@gsnBelowYRefLineBarPatterns 				; Y参考线之下柱状图样式
res@gsnAboveYRefLineBarColors 					; Y参考线之上柱状图颜色
res@gsnBelowYRefLineBarColors 					; Y参考线之下柱状图颜色
res@gsnAboveYRefLineColor 							; 指定Y参考线以上曲线与参考线所为区域的颜色
res@gsnBelowYRefLineColor 							; 指定Y参考线以下曲线与参考线所为区域的颜色

 
 地图 
 res
 res@mpLimitMode 												; 地图限制模式，取决于地图投影方式
 res@mpMinLatF 							= 0.				; 地图最小纬度
 res@mpMaxLatF 							= 50. 			; 地图最大纬度
 res@mpMinLonF 							= 70. 			; 地图最小经度
 res@mpMaxLonF 							= 120. 			; 地图最大经度
 res@mpCenterLonF 					= 0. 				; 地图投影的中心经度
 res@mpDataBaseVersion 			= "MediumRes" ; 地图数据库分辨率
 res@mpDataSetName 					= "Earth..4"  ; 地图数据库
 res@mpFillOn 							= True 				; 地图是否要填充
 res@mpLandFillColor 				= "gray" 			; 陆地填充颜色
 res@mpOceanFillColor 			= "SkyBlue" 	; 海洋填充颜色
 res@mpInlandWaterFillColor = "blue" 		  ; 内陆水面填充颜色
 res@mpOutlineOn 						= True 				; 打开地图轮廓
 http://www.ncl.ucar.edu/Applications/mapoutlines.shtml#ex6
 res@mpOutlineBoundarySets 	= "Geophysical" ; 打开不同的大陆轮廓
 res@mpOutlineBoundarySets      = "NoBoundaries" ;不要大陆轮廓！
 res@mpGeophysicalLineThicknessF = 2. 			; 地理边界线的粗细
 res@mpGeophysicalLineColor 		 = 1 				; 地理边界线的颜色
 res@mpProvincialLineThicknessF  = 2 				; 省界粗细
 res@mpProvincialLineColor 			 = 1 				; 省界颜色
 res@mpFillAreaSpecifiers 			 = (/"Land"/) ; 指定填充区域
 res@mpSpecifiedFillColors       = (/"white"/) ; 指定填充 的颜色
 res@mpMaskAreaSpecifiers 			 = (/"Beijing"/) ; 指定不填充的区域
 res@mpGridAndLimbOn 						 = True          ; 打开经纬度网格
 res@mpGridLatSpacingF
 res@mpGridSpacingF = 5.0     ;这个对WRF网格有效！

 res@mpShapeMode 								 = "FreeAspect"  ; 设置地图形状比例模式
 
  ;调整长宽比
res@mpShapeMode = "FreeAspect"
res@vpWidthF = 0.45
res@vpHeightF = 0.3
res@lbTitleOn 									= False 					; 是否打开色标标题



 色标
 gsn_reverse_colormap(wks)   ;色标反转
 res@lbLabelBarOn               = True          ; 是否打开色标
 res@cnFillOn 									= True      		;设置填色图
 res@cnFillMode 								= "AreaFill"    ; 设置填充模式
 res@cnLabelBarEndStyle 				= "ExcludeOuterBoxes" ; 色标尾端样式
 res@gsnSpreadColorStart 				= 2 						; 开始颜色的色表索引
 res@gsnSpreadColorEnd 					= 50 						; 结束颜色的色表索引\
 res@lbLabelAutoStride 					= True 					; 
 res@lbOrientation 							= "vertical" 		; 设置色标方向，水平或垂直
 res@lbLabelAutoStride 					= True 					; 是否自动设置色标标签间隔
 res@lbLabelStride 							= 2 						; 手动设置色标标签间隔
 res@lbLabelAlignment 					= "BoxCenters"  ; 色标标签位于颜色方框的位置
 res@lbLabelAngleF 							= 55						; 色标标签倾斜角度
 res@lbLabelFontHeightF 				= 0.02						; 色标标签字体大小
 res@lbTitleOn 									= True 					; 是否打开色标标题
 res@lbTitleString 							= "m/s" 				; 色标标题
 res@lbTitleFontHeightF         = 0.02
 res@pmLabelBarOrthogonalPosF 	= -0.03 				; 色标垂直方向的位置
 res@pmLabelBarParallelPosF 		= -0.01 				; 色标水平方向的位置
 res@pmLabelBarWidthF 					= 0.15 					; 色标的宽度
 res@pmLabelBarHeightF 					= 0.6 					; 色标的高度
 res@lbBoxSeparatorLinesOn = False ;色标分割线 

 标题
 res@tiMainString 							= "Title" 			; 图形主标题
 res@tiXAxisString 							= "Lon" 				; X轴标题
 res@tiXAxisFontHeightF 				= 0.035 				; X轴标题字体大小
 res@tiYAxisString  						= "Lat" 				; Y轴标题
 res@tiYAxisFontHeightF 				= 0.035 				; Y轴标题字体大小
 


; 坐标轴
 res@trYReverse 								= True 					; Y轴是否反转
 res@trXReverse 								= True 					; X轴是否反转
 res@trYMinF 										= 0. 						; Y轴最小值
 res@trYMaxF 										= 100. 					; Y轴最大值
 res@trXMinF 										= 10. 					; X轴最小值
 res@trXMaxF 										= 20. 					; X轴最大值
 res@trYLog 										= True 					; Y轴为对数坐标
 res@trXLog 										= True 					; X轴为对数坐标
 

; 刻度
 res@tmXBMajorLengthF  = 0.005    ;刻度线突出的长度
 res@tmXBMinorLengthF  = 0.005
 res@tmYLMajorLengthF  = 0.005
 res@tmYLMinorLengthF  = 0.005
 res@tmXBOn 										= True 				; 打开下 X轴刻度
 res@tmXBLabelsOn 							= True 				; 打开下 X轴刻度标签
 
 res@tmXBLabelFontHeightF 			= 0.035 			; 下X轴的刻度标签字体大小
 res@tmXBLabelAngleF 						= 55. 				;  下x轴刻度标签倾斜角度
 res@tmXBMode 									= "Automatic" ;  下X轴刻度模式，默认为“Automatic”
;   其它常用模式
;   指定每个标签模式
   res@tmXBMode 								= "Explicit"   ; 下X轴刻度模式
   res@tmXBValues 							= (/1,2,3/) 	 ; 指定模式下刻度值
   res@tmXBLabels    						= (/"a","b","c"/) ; 指定模式下刻度值对应的标签
;   设定最大最小值及间隔
   res@tmXBMode 								= "Manual"  		; 下 X轴刻度模式
   res@tmXBTickStartF 					= 10. 					; 下X轴开始刻度
   res@tmXBTickEndF 						= 100. 					; 下X轴终止刻度
   res@tmXBTickSpacingF 				= 10. 					; 下X轴刻度间隔
 将以上属性中XB改成
 XT 对应 上X轴 刻度属性
 YL 对应 左Y轴 刻度属性
 YR 对应 右Y轴 刻度属性
 res@pmTickMarkDisplayMode 			= "Always" 			; 刻度显示模式!!重要
 

 图例
 res@pmLegendWidthF 						= 0.55 				; 图例宽度
 res@pmLegendHeightF 						= 0.18 				; 图例高度
 res@lgTitleOn 									= True 				; 打开图例标题
 res@lgTitleString 							= "title" 		; 图例标题
 res@lgOrientation 							= "Vertical"  ; 图例排列方向 ：水平 or 垂直
 res@lgPerimOn 									= True 				; 显示图例边框
 res@xyExplicitLegendLabels 		= (/"a","b"/) ; 设定图例中标签
 res@pmLegendOrthogonalPosF 		= 0.2 				; 设定图例垂直位置
 res@pmLegendParallelPosF  			= 0.5 				; 设置图例水平位置
 

 多边形

 polygons
 res@gsFillIndex 							  = 0 		; 多边形填充样式
 res@gsFillColor 							  = "red" ; 多边形填充颜色
 res@gsEdgesOn 									= True  ; 师傅显示多边形边框
 res@gsEdgeColor 								= "blue" ; 多边形边框颜色
 res@gsEdgeThicknessF 					= 2. 			; 多边形边框粗细
 polylines
 res@gsLineDashPattern 					= 3 			; 线的样式
 res@gsLineColor 								= "red" 	; 线的颜色
 res@gsLineThicknessF 					= 2. 			; 线的粗细
 polymarkers
 res@gsMarkerIndex 							= 5  ;标记的样式
 res@gsMarkerColor 							= 3 ; 标记的颜色
 res@gsMarkerSizeF 							= 0.01 ;标记的大小
 

 文本Text
 text=gsn_add_text(wks,plot,text,x,y,res)
 res@txString 								= "Text" ;文本
 res@txAngleF 								= 55. ;文本倾斜角度
 res@txDirection 							= "Down" ;文本方向：水平或垂直
 res@txFont 									= 4     ;文本字体样式
 res@txFontHeightF            =  0.007 ;字体大小
 res@txFontColor 							= "red" ;文本字体颜色
 res@txJust 									= "CenterCenter" ;对齐点相对于文本的位置
 res@txPerimOn 								= True      ;显示文本框
 res@txPerimColor 						= "red" 		; 文本框颜色
 res@txPosXF 									= 0.5 			;文本对齐点页面坐标X方向位置
 res@txPosYF 									= 0.5 			; 文本对齐点页面坐标Y方向位置
 

 视图View
 res@vpHeightF 								= 0.6 			;对象边框高度， NDC 单位
 res@vpWidthF 								= 0.6 			;对象边框宽度， NDC 单位
 res@vpXF 										= 0.2 			; 对象边框左边缘位置 ，NDC单位
 res@vpYF 										= 0.8       ; 对象边框右边缘位置 ，NDC单位
 

 绘图顺序
 当多个图层叠加时往往要设置绘图顺序,属性值有 "PreDraw","Draw","PostDraw".
 res@cnFillDrawOrder 							; 设置填色图绘图顺序
 res@cnLabelDrawOrder 						; 设置等值线标签绘图顺序
 res@cnLineDrawOrder 							; 设置等值线绘图顺序
 res@mpFillDrawOrder 							; 设置填充地图绘图顺序
 res@mpGridAndLimbDrawOrder 			; 设置网格线绘图顺序
 res@mpGridLonSpacingF      			; 设置
 res@mpLabelDrawOrder 						; 设置地图标签绘图顺序
 res@mpOutlineDrawOrder  					; 设置地图轮廓绘图顺序
 res@mpPerimDrawOrder 						; 设置地区投影边界线绘图顺序
 res@stStreamlineDrawOrder 				; 设置流线绘图顺序
 res@tfPolyDrawOrder 							; 设置多边形、线、标记绘图顺序
 res@vcVectorDrawOrder 						; 设置矢量箭头绘图顺序
 res@xyCurveDrawOrder 						; 设置XY曲线绘图顺序
 
 res@tfDoNDCOverlay ; True 不发生转变
  res@pmTickMarkDisplayMode  = "Always"           ; turn on tickmarks

 
 
 透明色，由于覆盖overlay
   cmap_r                    = read_colormap_file("/mnt/d/codes/ncl/128colors.rgb")
  cmap_r(0,3)               = 0.0    ; first color fully transparent
  res1@cnFillPalette        = cmap_r       ;设置透明色
 res1@gsMarkerOpacityF  =1.设置透明度
 
 
 可控输出格式
 write_matrix (coxy, sprinti("%3i",nx)+"f7.2", option) 
 
 
   读取年月
;  yyyymm = cd_calendar(cnumber&time,1)
;  print(yyyymm)

*********画矩形
  gnres             = True
  gnres@gsFillOpacityF = 0
  gnres@gsFillColor = "Red"
  gnres@gsEdgesOn   = True
  gnres@gsEdgeThicknessF   = 3

  lonbox = (/240,240,90,90,240,30,30,240/)
  latbox = (/85.5,19.5,19.5,85.5,85.5,85.5,19.5,19.5/)

   shit= gsn_add_polygon(wks, plot, lonbox, latbox, gnres)
  draw(plot)

*********画线
  gnres             = True
   gnres@gsLineColor      = "yellow"
  gnres@gsLineThicknessF = 5.0

  lonbox = (/-55,-92,-92,-55,-55/)
  latbox = (/30,30,60,60,30/)
   shit= gsn_add_polyline(wks, plot, lonbox, latbox, gnres)
  draw(plot)
  frame(wks)



*********读取气旋数目记录
  fiTY    = "/mnt/d/datafile/HaibingEEC/countsall.txt"
  nrow    = numAsciiRow(fiTY)  
  ncolumn = 39
  cnumber = readAsciiTable(fiTY,ncolumn,"float",1) ;从第二行开始读起
  
  frame(wks)作用:装框，加入此语句后x11窗口需要点一下才会消失
  
  
  
  mask 作用: mask(a,b=条件, True/False) b矩阵中满足条件的对应位置，mask掉
  coxy = mask(coxy,coxy.eq.0,False)
  
  
  

landsea_mask 屏蔽海上或者陆地上的点
;*********读取海陆nc文件
   a    = addfile("$NCARG_ROOT/lib/ncarg/data/cdf/landsea.nc","r")
   lsdata = a->LSMASK
   lsm  = landsea_mask(lsdata,coxy&latitude,coxy&longitude)
   data = mask(data,lsm.eq.3,False)
   data = mask(data,lsm.eq.4,False)
   
   student_t 函数:计算双尾的t分布 #不是计算t值！！！#
   student_t(t,df)
   t: 包含t值的标量或者数组
   df: 和t有相同大小的标量,或者数组,包含自由度.如果t是一个矢量,df是标量,那么df会转化成数组
   返回值:和t有相同大小的数组
   
   
   ttest(
    ave1         : numeric,  
		var1         : numeric,  
		s1           : numeric,  
		ave2         : numeric,  
		var2         : numeric,  
		s2           : numeric,  
		iflag    [1] : logical,  
		tval_opt [1] : logical   
	)

	return_val  :  float or double)
	参数
	ave1,ave2 标量或者数组的维度(他们必须彼此相同的维数)。他们代表从两个样本计算出的平均数(即样本均值)。
	s1,sw 必须是和ave1和ave2有相同维度的数组。它们表示从两个样本中计算出来的方差(即样本方差)
	iflag 如果两个源数据有相同的总体方差,设为 False ,如果两个源数据有不同的总体方差,设为 True。后者采用Welsh修订的自由度(Welsh的t检验)
	tval_opt 如果除了统计概率值外还需要返回Student-t值,设置成True,此时返回数组为2×dimsize(ave1) ； 如果仅仅只返回概率值,设置成false
	
  返回统计信度的估计	Returns an estimate of the statistical significance and, optionally, the t-values.

escorc(x,y) 计算(Pearson)样本线性交叉相关系数(0滞后) cor = SUM [(X(t)-Xave)*(Y(t)-Yave)}]/(Xstd*Ystd) 
						对于n对独立的观察可以通过t检验检验来验证 t = r*sqrt[ (n-2)/(1-r^2) ] 该统计量有自由度n-2的t分布，r的置信区间同样可以估计到。然而由于Pearson相关系数r的样本分布并不是正态分布，Pearson相关系数r转化成Fisher z统计量,置信区间使用Fisher z来计算。逆变换被用于转换到r空间
						特别的,置信区间可以通过以下这些量获得，
						fisher z转换 z=0.5*log((1+r)/(1-r))
						z转换的标准误差 z_se=sqrt(1.0/(N-3))
						fisher 逆变换 ri=(exp(2*z)-1)/(exp(2*z)+1)
escovc(x,y) 计算交叉协方差(0滞后)  cov = SUM [(X(t)-Xave)*(Y(t)-Yave)]/(NT-1)
esccr(x,y,mxlag)  计算样本交叉相关系数    c(k) = SUM [(x(t)-xAve)*(y(t+k)-yAve)}]/(xStd*yStd)       k=0,mxlag. 推荐0 <= mxlag <= N/4
esccv(x,y,mxlag)  计算样本落后交叉协方差  c(k) = SUM [(q(t)-qAve)*(s(t+k)-sAve)}]/N  k=0,mxlag. 推荐0 <= mxlag <= N/4
