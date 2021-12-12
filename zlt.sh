#!/bin/sh
rm /sbin/at_ctl
wget https://github.com/marukoy/project/raw/main/at_ctl -O /sbin/at_ctl
chmod 755 /sbin/at_ctl
cat > /etc_ro/default/default_parameter_sys <<-END
######SOFTAP专用 START###################################
check_roam=yes
gsm_signalbar0_low=0
gsm_signalbar0_high=0
gsm_signalbar1_low=1
gsm_signalbar1_high=2
gsm_signalbar2_low=3
gsm_signalbar2_high=6
gsm_signalbar3_low=7
gsm_signalbar3_high=9
gsm_signalbar4_low=10
gsm_signalbar4_high=12
gsm_signalbar5_low=13
gsm_signalbar5_high=31
wcdma_signalbar0_low=0
wcdma_signalbar0_high=0
wcdma_signalbar1_low=1
wcdma_signalbar1_high=8
wcdma_signalbar2_low=9
wcdma_signalbar2_high=16
wcdma_signalbar3_low=17
wcdma_signalbar3_high=22
wcdma_signalbar4_low=23
wcdma_signalbar4_high=28
wcdma_signalbar5_low=29
wcdma_signalbar5_high=91
tds_signalbar0_low=0
tds_signalbar0_high=0
tds_signalbar1_low=1
tds_signalbar1_high=8
tds_signalbar2_low=9
tds_signalbar2_high=16
tds_signalbar3_low=17
tds_signalbar3_high=22
tds_signalbar4_low=23
tds_signalbar4_high=28
tds_signalbar5_low=29
tds_signalbar5_high=91
lte_signalbar0_low=0
lte_signalbar0_high=0
lte_signalbar1_low=1
lte_signalbar1_high=25
lte_signalbar2_low=26
lte_signalbar2_high=32
lte_signalbar3_low=33
lte_signalbar3_high=38
lte_signalbar4_low=39
lte_signalbar4_high=44
lte_signalbar5_low=45
lte_signalbar5_high=97
need_cops_number_format=yes
need_display_searching_status=yes
need_restart_when_sim_insert=yes
need_support_pb=yes
need_support_sms=yes
network_need_gsm=yes
network_need_tds=yes
product_model=MF910W
roam_setting_option=on
use_lock_net=no
network_category_based_on=act
appKeyMobile=A100000853
Brand=ZTE
hostName=dm.wo.com.cn
Intype=ZTE
Manuf=
Model=
portNum=6001
registerDmType=0
secsTime=1
versionPrevious=
wa_version=
OSVersion=1
OS=TOS
urlMobile=
DNS_proxy=
dnsmasqfile=/var/log/dnsmasq.log
dnsmasqfileSize=1024
auto_connect_when_limited=no
is_traffic_aline_on=no
is_traffic_alining=no
is_traffic_limit_on=no
keep_online_when_limited=no
traffic_sms_number=0
update_type=mifi_fota
fota_device_type=mifi
fota_models=V3SC_MIFI
fota_oem=ZTE
fota_platform=ZX297520
fota_dm_vendor=zx
fota_token_zx=7CBE016400F65621740A04E742E6FB12
fota_dl_url_zx=
fota_chk_url_zx=
fota_reg_url_zx=
fota_report_dlr_url_zx=
fota_report_upgr_url_zx=
fota_report_sales_url_zx=
fota_token_gs=97a53ee9f45adfe53c762a72f83f6f43
fota_dl_url_gs=
fota_chk_url_gs=
fota_reg_url_gs=
fota_report_dlr_url_gs=
fota_report_upgr_url_gs=
fota_report_sales_url_gs=
Login=admin
Password=admin
sntp_server_count=3
MAX_Station_num=16
wifi_key_gen_type=MAC
wifi_key_len=8
wifi_key_only_digit=y
wifi_lte_intr=1
wifi_ssid_gen_with_mac_lastbyte=5
wifi_key_gen_with_mac_lastbyte=8
wifi_mac_num=2
wifiwan=wlan0-vxd
wifiwan_mode=dhcp
idle_time="600"
product_type=1
errnofile=/usr/netlog/errno.log
errnofileSize=1024
hotplugfile=/usr/netlog/hotplug.log
hotplugfileSize=1024
mynetlinkfile=/usr/netlog/mynetlink.log
mynetlinkfileSize=1024
print_level=2
syslog_level=4
################SOFTAP专用 END#####################################
######USB端口配置#######
##########usb/rj45等热拔插相关路径##############
#rj45初始状态路径
rj45_plugstate_path=/sys/kernel/eth_debug/eth_state
#usb网口名路径
usb_name_path=/sys/dwc_usb/usbconfig/netname
#usb各网口状态路径
usb_plugstate_path=/sys/dwc_usb/usbconfig/
################################################
#配置是否有光盘
cdrom_state=0
#配置Windows下网卡类型
select_type=select_rndis
####
#配置研发模式usb设备端口组合
usb_devices_debug=acm,adb
#配置用户模式usb设备端口组合
usb_devices_user=mass_storage
#配置生产模式usb设备端口组合
usb_devices_factory=acm
#配置AMT模式usb设备端口组合
usb_devices_amt=acm
#配置研发模式acm串口个数
usb_acm_num_debug=4
#配置用户模式acm串口个数
usb_acm_num_user=0
#配置生产模式acm串口个数
usb_acm_num_factory=2
#配置AMT模式acm串口个数
usb_acm_num_amt=3
#wangzhen
#配置debug模式mass_storage的lun的模式
usb_lun_type_debug=MMC
#配置user模式mass_storage的lun的模式
usb_lun_type_user=MMC
#配置cdrom模式mass_storage的lun的模式
usb_lun_type_cdrom=CDROM,MMC
###
#配置研发模式网口为NDIS时设备的PID
PID_TSP_NDIS=0579
###
#配置研发模式网口为RNDIS时设备的PID
PID_TSP_RNDIS=0579
#配置研发模式网口为ECM时设备的PID
PID_TSP_ECM=0579
#配置研发模式异常时设备的PID
PID_TEST=ff00
#配置眼图模式时设备的PID
PID_YT=0580
#配置研发模式光盘CDROM的PID
PID_TSP_CDROM=0548
#####
#配置用户模式模式光盘CDROM的PID
PID_USER_CDROM=1225
#####
#######
#配置用户模式网口为RNDIS时设备的PID
PID_USER_RNDIS=1557
#配置用户模式网口为ECM时设备的PID
PID_USER_ECM=1557
#配置用户模式网口为NDIS时设备的PID
PID_USER_NDIS=1557
#配置用户模式没有网口时设备的PID
PID_USER_NOVNIC=0580
######
#配置死机trap时设备的PID
PID_TRAP=0197
#配置生产模式时设备的PID
PID_FACTORY=0534
#配置AMT模式时设备的PID
PID_AMT=0201
#配置关机充电时设备的PID
PID_FASTPOWEROFF=2004
#配置设备的VID
VID_TSP=19D2
#配置设备的iSerial字符串
SERIAL_TSP=1234567890ABCDEF
#配置研发模式设备的ReleaseID
RELEASEID_TSP=0100
#配置用户模式设备的ReleaseID
RELEASEID_USER=0101
#配置设备的manufacturer字符串
MANUFACTURER_TSP=ZXIC,Incorporated
#配置设备的product字符串
PRODUCT_TSP=ZXIC Mobile Boardband
#配置设备的config字符串
CONFIG_TSP=ZXIC Configuration
#cdrom lun的vendor字符串
VENDOR_MS_CDROM=ZXIC
#cdrom lun的product字符串
PRODUCT_MS_CDROM=USB SCSI CD-ROM
#cdrom lun的release字符串
RELEASE_MS_CDROM=2.31
#cdrom lun的inquiry字符串
INQUIRY_MS_CDROM=ZXIC USB SCSI CD-ROM 2.31
#mmc lun的vendor字符串
VENDOR_MS_MMC=ZXIC
#mmc lun的product字符串
PRODUCT_MS_MMC=MMC Storage
#mmc lun的release字符串
RELEASE_MS_MMC=2.31
#SD介质路径
usb_tcard_lun_path=/dev/mmcblk0
#mmc lun的inquiry字符串
INQUIRY_MS_MMC=ZXIC MMC Storage 2.31
#配置ECM网卡个数
ECM_NUM=1
#配置RNDIS网卡最大组包数
RNDIS_PKT_NUM=10
###波特率自适应开关###
self_adaption_port=
###某些端口不需要向应用上报端口准备好消息###
notify_forbiden_ports=
######USB端口配置END#######
######CP侧NV配置信息#######
#内部软件版本号
zversion=K318V1.0.0B03
#外部软件版本号
zcgmr=ZTE_K318V1.0.0B03
#硬件版本号
zhver=V0.1
#内部机型
zcgmm=K318
#外部机型
zcgmw=K318
#厂商信息
zcgmi=ZXIC
#SSID号
zssid=0
#WifiKey的值
zwifikey=0
#锁网最大解锁次数，锁网模块使用
zunlocktimes=0
#版本模式类型，正常版本/挂侧版本
zversionmode=0
#智能短信功能开关
zisms=0
#DM功能开关,0:关闭，1移动，2联通，3电信
zdmreg=0
#联通DM 注册开机等待时间, 1~60 有效，单位分钟，其他数值: 无效值
zdmregtime=0
#工具log 存取
zcat_mode=
#照相机图片分辨率显示控制
zcamera_interprolation=1
#自动搜网方式网络接入次序
auto_acqorder=
######CP侧NV配置信息END#######
######TOZED新增NV参数########
tz_lock_band_state=yes
tz_lock_band_list=4,0,0,8,128,1,0,0,0
tz_lock_band_auto_list=0
tz_lock_plmn_state=no
tz_lock_plmn_list=
actionlte=0
uarfcnlte=
cellParaIdlte=
tz_gre_state=0
tz_gre_tunnel_name=tunnel0
tz_gre_default_gateway=
tz_gre_ip_addr=
tz_gre_local_ip=
tz_gre_remote_ip=
ip_postroute_enable=0
tz_display_band_list=4,0,0,8,128,1,0,0,0
tz_ddos_status=1
tz_l2tp_state=0
tz_l2tp_lac_name=lroute
tz_l2tp_lns_server=113.98.195.202
tz_l2tp_tunnel_name=
tz_l2tp_challenge_pass=
tz_l2tp_auth_name=l2tp
tz_l2tp_auth_pass=l2tp9801
tz_l2tp_mtu=1410
tz_l2tp_lns_checkalive=yes
tz_wifi_channel_low=1
tz_wifi_channel_hi=11
tz_wifi_ch_hi_max=11
tz_config_file_version=S10G_Globe_Consumer-v2.3
tz_macwriter_switch=0
tz_usb_support=0
tz_usb_downloader=1
tz_lock_sim=0
tz_sim_imsi=
staticIPEnable=0
tz_static_mac_0=
tz_static_mac_1=
tz_static_mac_2=
tz_static_mac_3=
tz_static_mac_4=
tz_static_mac_5=
tz_static_mac_6=
tz_static_mac_7=
tz_static_mac_8=
tz_static_mac_9=
tz_static_mac_10=
tz_static_mac_11=
tz_static_mac_12=
tz_static_mac_13=
tz_static_mac_14=
tz_static_mac_15=
tz_static_mac_16=
tz_static_mac_17=
tz_static_mac_18=
tz_static_mac_19=
tz_static_ip_0=
tz_static_ip_1=
tz_static_ip_2=
tz_static_ip_3=
tz_static_ip_4=
tz_static_ip_5=
tz_static_ip_6=
tz_static_ip_7=
tz_static_ip_8=
tz_static_ip_9=
tz_static_ip_10=
tz_static_ip_11=
tz_static_ip_12=
tz_static_ip_13=
tz_static_ip_14=
tz_static_ip_15=
tz_static_ip_16=
tz_static_ip_17=
tz_static_ip_18=
tz_static_ip_19=
TZ_ACL_LAN_HTTP_0=
TZ_ACL_LAN_HTTP_1=
TZ_ACL_LAN_HTTP_2=
TZ_ACL_LAN_HTTP_3=
TZ_ACL_LAN_HTTP_4=
TZ_ACL_LAN_HTTP_5=0
TZ_ACL_LAN_ICMP_0=
TZ_ACL_LAN_ICMP_1=
TZ_ACL_LAN_ICMP_2=
TZ_ACL_LAN_ICMP_3=
TZ_ACL_LAN_ICMP_4=
TZ_ACL_LAN_ICMP_5=0
TZ_ACL_WAN_HTTP_0=
TZ_ACL_WAN_HTTP_1=
TZ_ACL_WAN_HTTP_2=
TZ_ACL_WAN_HTTP_3=
TZ_ACL_WAN_HTTP_4=
TZ_ACL_WAN_HTTP_5=0
TZ_ACL_WAN_ICMP_0=
TZ_ACL_WAN_ICMP_1=
TZ_ACL_WAN_ICMP_2=
TZ_ACL_WAN_ICMP_3=
TZ_ACL_WAN_ICMP_4=
TZ_ACL_WAN_ICMP_5=0
TZ_ACL_WAN_HTTP_RESEVER_0=
TZ_ACL_WAN_HTTP_RESEVER_1=
TZ_ACL_WAN_HTTP_RESEVER_2=
TZ_ACL_WAN_HTTP_RESEVER_3=
TZ_ACL_WAN_HTTP_RESEVER_4=
tz_set_version=
#mac计算密码去掉混淆的字母与数字
mac_rm_special_letters=0
dialog_ssid_password=0
ssid_head=GlobeAtHome_
tr069_DeviceSummary=InternetGatewayDevice:1.1[](WiFiLAN:1,WAN:1,Time:1)
tr069_Manufacturer=Shenzhen Tozed Technologies Co., Ltd
tr069_ManufacturerOUI=00037F
tr069_ModelName=S10G
tr069_Description=S10G 4G CPE
tr069_ProductClass=ZLT S10G
tr069_SerialNumber=000000000000
tr069_ModemFirmwareVersion=7520MV2.5.0B15P09
tr069_SpecVersion=V1.0
tr069_ProvisioningCode=cmcc
tr069_ServerParameterKey=ZTE1234567890
tr069_LANDeviceNumberOfEntries=1
tr069_WANDeviceNumberOfEntries=0
tr069_Boot=1
tr069_BootStrap=0
tr069_CPEPortNo=58000
tr069_CertEnable=0
tr069_VCFName=zte_tr069_config_file
tr069_VCFVersion=V1.0
tr069_VCFDate=
tr069_VCFDesc=This is a vendor config file.
tr069_VCFNumberOfEntries=1
tr069_app_enable=1
tr069_UploadMethod=POST
tr069_DiagState=
tr069_DiagInterface=
tr069_DiagHost=
tr069_DiagNumberOfRepetitions=
tr069_DiagTimeout=
tr069_DiagDataBlockSize=
tr069_DiagDataDSCP=
tz_multidhcp_enable=0
tz_dhcp2_enable=0
tz_dhcp3_enable=0
va0_ipaddr=192.168.100.1
va1_ipaddr=192.168.101.1
va0_dhcpDns=192.168.100.1
va1_dhcpDns=192.168.101.1
va0_netmask=255.255.255.0
va1_netmask=255.255.255.0
va0_dhcpStart=192.168.100.100
va1_dhcpStart=192.168.101.100
va0_dhcpEnd=192.168.100.200
va1_dhcpEnd=192.168.101.200
va0_dhcpLease=86400
va1_dhcpLease=86400
disconnect_internet=0
web_used_port=80
allow_login_from_wan=no
tz_eps_attachment=0
tz_multiapn_enable=0
tz_apn2_enable=0
tz_apn3_enable=0
tz_apn2_cid=3
tz_apn3_cid=4
apn2_profile_name=cmwap
apn2_wan=cmwap
apn2_type=IP
apn2_auth_mode=none
apn2_username=
apn2_passwd=
apn3_profile_name=internet
apn3_wan=internet
apn3_type=IP
apn3_auth_mode=none
apn3_username=
apn3_passwd=
main_nat=1
main_nat_1=1
main_nat_2=1
tz_volte_apn=ims
tz_volte_uri_apn=
#digit map快捷匹配拨号开关
digitmap_switch=0
#digit map快捷匹配拨号 例：(2xxxxxx|3xxxxxx|4xxxxxx|5xxxxxx|7xxxxxx|0[1-9][0-9]xxxxxxx|00xxxxxxxxxxxxxx|6xxx|8xxx|1xxx|*xx|#xx)
digitmap_str=
siproxd_enable=0
sip_listen_port=5060
dialog_hotline_str=
polarity_reversal=0
tz_uri_type=0
tz_voice_support=0
tz_lock_wcdma_band=0,0,0
tz_lock_tds_band=0,0
tz_display_3G_band_list=0
auto_simpin=0
sim_random_pin=
sim_default_pin=1234
tz_Mexico_lock_cellid=0
tz_lock_cellid_smsnum=
tz_Mexico_sos_lock_cellid=
default_conf_ver=4
######TOZED新增NV END########
######
tz_trap_status=1
######
END
cat > /etc_ro/default/default_parameter_user <<-END
apn_auto_config=CMCC($)cmnet($)manual($)*99#($)pap($)($)($)IP($)auto($)($)auto($)($)
APN_config0=Production APN($)athome.globe.com.ph($)manual($)*99#($)($)($)($)IPv4v6($)auto($)($)auto($)($)($)
APN_config1=Staging APN($)F1.globe.com.ph($)manual($)*99#($)($)($)($)IPv4v6($)auto($)($)auto($)($)($)
APN_config2=
APN_config3=
APN_config4=
APN_config5=
APN_config6=
APN_config7=
APN_config8=
APN_config9=
apn_index=0
apn_mode=manual
at_snap_flag=3
at_wifi_mac=0
auto_apn_index=0
cid_reserved=12
clear_pb_when_restore=no
clear_sms_when_restore=no
default_apn=3gnet
ipv6_APN_config1=
ipv6_APN_config2=
ipv6_APN_config3=
ipv6_APN_config4=
ipv6_APN_config5=
ipv6_APN_config6=
ipv6_APN_config7=
ipv6_APN_config8=
ipv6_APN_config9=
m_profile_name=Production APN
need_init_modem=yes
net_select=Only_LTE
pdp_type=IPv4v6
ppp_apn=
max_reconnect_time=3000000
pppd_auth=noauth
ppp_auth_mode=
ppp_passwd=
ppp_pdp_type=
ppp_username=
ipv6_ppp_auth_mode=
ipv6_ppp_passwd=
ipv6_ppp_username=
pre_mode=
prefer_dns_manual=0.0.0.0
standby_dns_manual=0.0.0.0
wan_apn=athome.globe.com.ph
wan_dial=
cta_test=0
safecare_enbale=0
safecare_hostname=mob.3gcare.cn
safecare_registed_imei=
safecare_registed_iccid=
safecare_contimestart1=
safecare_contimestart2=
safecare_contimestart3=
safecare_contimestop1=
safecare_contimestop2=
safecare_contimestop3=
safecare_contimeinterval=
safecare_mobsite=http://mob.3gcare.cn
safecare_chatsite=
safecare_platno=
safecare_mobilenumber=
safecare_version=ZTETECH.K188.YUN.T01
ethwan_dns_mode=auto
pswan_dns_mode=auto
wifiwan_dns_mode=auto
ethwan_ipv6_dns_mode=auto
wifiwan_ipv6_dns_mode=auto
pswan_ipv6_dns_mode=auto
alg_ftp_enable=0
alg_sip_enable=0
blc_wan_auto_mode=AUTO_PPP
blc_wan_mode=PPP
br_ipchange_flag=
br_node=usblan0
set_need_language=
clat_fake_subnet=192.0.168.0
clat_frag_collect_timeout=300
clat_local_mapping_timeout=300
clat_mapping_record_timeout=3000
clat_query_server_port=1464
DefaultFirewallPolicy=0
dev_coexist=0
dhcpDns=192.168.254.254
dhcpEnabled=1
dhcpEnd=192.168.254.200
dhcpLease_hour=24
dhcpStart=192.168.254.100
dhcpv6stateEnabled=0
dhcpv6statelessEnabled=1
dial_mode=auto_dial
DMZEnable=0
DMZIPAddress=
dns_extern=
ipv6_dns_extern=
eth_act_type=
eth_type=lan
ethlan=eth0
ethwan=eth0
ethwan_dialmode=auto
ethwan_mode=auto
ethwan_priority=3
fast_usb=usblan0
fastnat_level=2
IPPortFilterEnable=1
IPPortFilterRules_0=
IPPortFilterRules_1=
IPPortFilterRules_2=
IPPortFilterRules_3=
IPPortFilterRules_4=
IPPortFilterRules_5=
IPPortFilterRules_6=
IPPortFilterRules_7=
IPPortFilterRules_8=
IPPortFilterRules_9=
IPPortFilterRulesv6_0=
IPPortFilterRulesv6_1=
IPPortFilterRulesv6_2=
IPPortFilterRulesv6_3=
IPPortFilterRulesv6_4=
IPPortFilterRulesv6_5=
IPPortFilterRulesv6_6=
IPPortFilterRulesv6_7=
IPPortFilterRulesv6_8=
IPPortFilterRulesv6_9=
ipv4_fake_subnet=192.0.0.0
ipv6_fake_subnet=2016::1
lan_ipaddr=192.168.254.254
lan_name=br0
lan_netmask=255.255.255.0
LanEnable=1
mac_ip_list=
mgmt_quicken_power_on=0
mtu=1440
natenable=
need_jilian=1
nofast_port=21+22+23+25+53+67+68+69+110+115+123+443+500+1352+1723+1990+1991+1992+1993+1994+1995+1996+1997+1998+4500+5060
nv_save_interval=300
path_conf=/etc_rw
path_ro=/etc_ro
path_log=/var/log/
path_sh=/sbin
path_tmp=/tmp
permit_gw=
permit_ip6=
permit_nm=255.255.255.0
PortForwardEnable=1
PortForwardRules_0=
PortForwardRules_1=
PortForwardRules_2=
PortForwardRules_3=
PortForwardRules_4=
PortForwardRules_5=
PortForwardRules_6=
PortForwardRules_7=
PortForwardRules_8=
PortForwardRules_9=
PortMapEnable=1
PortMapRules_0=
PortMapRules_1=
PortMapRules_2=
PortMapRules_3=
PortMapRules_4=
PortMapRules_5=
PortMapRules_6=
PortMapRules_7=
PortMapRules_8=
PortMapRules_9=
ppp_name=ppp0
pppoe_password=
pppoe_username=
ps_ext1=usblan0
ps_ext2=usblan0
ps_ext3=usblan0
ps_ext4=usblan0
pswan=wan
pswan_mode=pdp
pswan_priority=1
RemoteManagement=0
rj45_plugstate_path=/sys/kernel/eth_debug/eth_state
rootdev_friendlyname=ZTE-UPnP
rootdev_manufacturer=ZTE
rootdev_modeldes=MBB
rootdev_modelname=MBB
os_url=http://www.zte.com.cn
serialnumber=See-IMEI
static_dhcp_enable=1
static_ethwan_gw=
static_ethwan_ip=
static_ethwan_nm=
static_ethwan_pridns=
static_ethwan_secdns=
static_wifiwan_ipaddr=
static_wifiwan_netmask=
static_wifiwan_gateway=
wifiwan_pridns_manual=
wifiwan_secdns_manual=
static_wan_gateway=0.0.0.0
static_wan_ipaddr=0.0.0.0
static_wan_netmask=0.0.0.0
static_wan_primary_dns=0.0.0.0
static_wan_secondary_dns=0.0.0.0
swlanstr=sw0_lan
swvlan=sw0
swwanstr=sw0_wan
tc_downlink=
tc_uplink=
tc_local=1310720
tc_enable=0
time_limited=
time_to_2000_when_restore=yes
upnpEnabled=0
usblan=usblan0
WANPingFilter=0
websURLFilters=
wifiwan_priority=2
DDNS=
DDNS_Enable=0
DDNSAccount=
DDNSPassword=
DDNSProvider=
iccidPrevious=
imeiPrevious=
registerFlag=0
registeredRound=
secsEveryRound=1
secsEveryTime=1
regver=4.0
meid=
uetype=1
lan_domain_Enabled=1
LocalDomain=globebroadband.net
data_volume_alert_percent=
data_volume_limit_size=
data_volume_limit_switch=0
data_volume_limit_unit=data
flux_day_total=0
flux_last_day=
flux_last_month=
flux_last_year=
flux_month_total=0
flux_set_day=
flux_set_month=
flux_set_year=
monthly_rx_bytes=0
monthly_time=0
monthly_tx_bytes=0
MonthlyConTime_Last=
dm_nextpollingtime=
fota_allowRoamingUpdate=0
fota_dl_pkg_size=0
fota_update_flag=
fota_updateIntervalDay=1500000
fota_upgrade_result=
fota_version_delta_id=
fota_version_delta_url=
fota_pkg_total_size=0
fota_version_file_size=
fota_version_md5sum=
fota_version_name=
fota_need_user_confirm_update=0
fota_need_user_confirm_download=1
fota_version_force_install=0
polling_nexttime=0
pwron_auto_check=0
fota_updateMode=0
fota_test_mode=0
fota_pkg_downloaded=0
fota_upgrade_result_internal=
isms_enable=0
mmi_battery_voltage_line=3090+3300+3450+3490+3510+3540+3550+3570+3580+3600+3620+3650+3670+3710+3740+3780+3850+3900+3950+4000+4060
mmi_fast_poweron=1
mmi_led_mode=sleep_mode
mmi_new_sms_blink_flag=1
mmi_show_pagetab=page1+page2+page3
mmi_showmode=led
mmi_task_tab=net_task+ctrl_task+wifi_task+traffic_task+key_task+battery_task+tip_task+tipwps_task+tipwifistation_task+tipfota_task+tipwps_task+tipnetconnect_task+wificode_task+ssid_task+sms_task
mmi_temp_voltage_line=951+1201+1692+1736
mmi_use_protect=temp_protect
mmi_use_wifi_usernum=1
leak_full_panic=
leak_list_max=
leak_set_flag=
monitor_period=300
netinf_flag=
skb_all_max=
skb_data_max=
skb_fromcp_max=
skb_max_fail=
skb_max_panic=
skb_size_max=
skb_tocp_max=
sale_stat_on=yes
sale_stat_type=2
salestat_def_server=218.244.149.167
salestat_interval=1800
salestat_req_url=/cnip/eservlet
salestat_result=init
salestat_retry_times=100
salestat_time_interval=36000
salestat_url=ip.ztetcm.cn
sntp_default_ip=134.170.185.211;131.107.13.100;202.112.31.197;202.112.29.82;202.112.10.36;ntp.gwadar.cn;ntp-sz.chl.la;dns.sjtu.edu.cn;news.neu.edu.cn;dns1.synet.edu.cn;time-nw.nist.gov;pool.ntp.org;europe.pool.ntp.org
sntp_dst_enable=0
sntp_other_server0=
sntp_other_server1=
sntp_other_server2=
sntp_server0=time-nw.nist.gov
sntp_server1=pool.ntp.org
sntp_server2=europe.pool.ntp.org
sntp_sync_select_interval_time=30
sntp_time_set_mode=auto
sntp_timezone=8
sntp_timezone_index=0
assert_errno=
comm_logsize=524288
cr_inner_version=ZTE_MF910SV1.0.0B08
cr_version=ZTE_MF910SV1.0.0B01
hw_version=PCBMF29S2V1.0.0
TURNOFF_CHR_NUM=
watchdog_app=0
HTTP_SHARE_FILE=
HTTP_SHARE_STATUS=
HTTP_SHARE_WR_AUTH=readWrite
ipv6_pdp_type=IPv4v6
ipv6_wan_apn=
Language=en
manual_time_day=
manual_time_hour=
manual_time_minute=
manual_time_month=
manual_time_second=
manual_time_year=
sdcard_mode_option=0
AccessControlList0=
AccessPolicy0=0
ACL_mode=0
AuthMode=WPAPSKWPA2PSK
Channel=0
closeEnable=0
closeTime=
CountryCode=PH
DefaultKeyID=0
DtimPeriod=1
EncrypType=TKIPAES
EX_APLIST=
EX_APLIST1=
EX_AuthMode=
EX_DefaultKeyID=
EX_EncrypType=
EX_mac=
EX_SSID1=Ufi_
EX_WEPKEY=
EX_wifi_profile=
EX_WPAPSK1=
FragThreshold=2346
HideSSID=0
HT_GI=1
Key1Str1=12345
Key2Str1=
Key3Str1=
Key4Str1=
Key1Type=1
Key2Type=
Key3Type=
Key4Type=
m_AuthMode=WPA2PSK
m_DefaultKeyID=
m_EncrypType=AES
m_HideSSID=0
m_Key1Str1=1234
m_Key2Str1=
m_Key3Str1=
m_Key4Str1=
m_Key1Type=1
m_Key2Type=
m_Key3Type=
m_Key4Type=
m_MAX_Access_num=0
m_NoForwarding=
m_show_qrcode_flag=0
m_SSID=Ufi_
m_ssid_enable=0
m_wapiType=
m_wifi_mac=901D45692A5C
m_WPAPSK1=12345678
m_WPAPSK1_encode=MTIzNDU2Nzg=
MAX_Access_num=16
MAX_Access_num_bak=32
NoForwarding=0
openEnable=0
openTime=
operater_ap=
RekeyInterval=3600
RTSThreshold=2347
show_qrcode_flag=0
Sleep_interval=10
ssid_write_flag=0
SSID1=S10_
tsw_sleep_time_hour=
tsw_sleep_time_min=
tsw_wake_time_hour=
tsw_wake_time_min=
wapiType=
wifi_11n_cap=1
wifi_band=b
wifi_coverage=long_mode
wifi_hostname_black_list=
wifi_hostname_white_list=
wifi_mac=901D45692A5B
wifi_mac_black_list=
wifi_mac_white_list=
wifi_profile=
wifi_profile1=
wifi_profile2=
wifi_profile3=
wifi_profile4=
wifi_profile5=
wifi_profile6=
wifi_profile7=
wifi_profile8=
wifi_profile9=
wifi_profile_num=0
wifi_root_dir=
wifi_sta_connection=0
wifi_wps_index=1
wifiEnabled=1
wifilan=wlan0-va0
wifilan2=wlan0-va1
WirelessMode=4
WPAPSK1=12345678
WPAPSK1_encode=MTIzNDU2Nzg=
wps_mode=
WPS_SSID=
WscModeOption=0
monitor_apps=
at_netdog=
autorspchannel_list=all
soctime_switch=0
uart_control=1
uart_ctstrs_enable=
uart_softcontrol_enable=
uart_wakeup_enable=1
special_cmd_list=$MYNETREAD
##为入网入库芯片认证版本添加 begin
atcmd_stream1=AT+ZSET="w_instrument",1
atcmd_stream2=AT^SYSCONFIG=24,0,1,2
atcmd_stream3=AT+ZSET="csiiot",2
atcmd_stream4=AT+ZSET="dlparaflg",0
atcmd_stream5=AT+ZSET="MTNET_TEST",1;AT+ZGAAT=0;AT+ZSET="CMCC_TEST",1;AT+ZSET="LTE_INFO",6348;AT+ZSET="VOICE_SUPPORT",1;AT+ZSET="FDD_RELEASE",7;AT+ZSET="LTE_RELEASE",1;AT+ZSET="UE_PS_RELEASE",5;AT+ZSET="QOS_RELEASE",4;AT+ZSET="TEBS_THRESHOLD",0
atcmd_stream6=AT+ZSET="MTNET_TEST",1;AT+ZGAAT=0;AT+ZSET="LTE_INFO",6348;AT+ZSET="VOICE_SUPPORT",1;AT+ZSET="FDD_RELEASE",7;AT+ZSET="LTE_RELEASE",1;AT+ZSET="UE_PS_RELEASE",5;AT+ZSET="QOS_RELEASE",4;AT+ZSET="TEBS_THRESHOLD",0;AT+ZSET="IGNORE_SECURITY_SUPPORT",0;AT+ZSET="csifilter",0;AT+ZSET="csrhobandflg",0;AT+ZSET="dlparaflg",1;AT+ZSET="csiup",1;AT+ZSET="rfparaflag",0,0,1,0;AT+ZSET="csiiot",1;AT+ZSET="EXCEPT_RESET",0;AT+ZSET="ISIM_SUPPORT",1;AT+ZIMSTEST="MTNET_TEST",1;AT+ZSET="MANUAL_SEARCH",0
##为入网入库芯片认证版本添加 end
#for audio ctrl
audio_priority=0123
customer_type=
debug_mode=
cpIndCmdList=+ZMMI+ZURDY+ZUSLOT+ZICCID^MODE+ZPBIC+ZMSRI+CREG+CEREG+CGREG+CGEV+CUSD
zephyr_filter_ip=
wait_timeout=2
#for volte
MTNET_TEST=0
NSIOT_TEST=0
amrw=1
cvmod_ims=3
EM_CALL_SUPPORT=0
EMCALL_TO_NORMAL=0
IMS_APN=
IMS_CONFURI=
IMS_URI_TYPE=0
IMS_REG_EXPIRES=600000
UDP_THRESH=1300
sntp_sync_time=1
IPSEC_DISABLE=0
PRECONDTION_NOT_SUPPORT=0
WAIT_RPT_TIME=1000
vsim_bin_path=/mnt/userdata/vSim.bin
sntp_static_server0=time-nw.nist.gov
sntp_static_server1=pool.ntp.org
sntp_static_server2=europe.pool.ntp.org
######TOZED新增NV参数########
data_remind_sms_switch=0
data_remind_sms_number=
data_remind_sms_content=
tozed_user=sztozed
admin_user=admin
user_user=user
tozed_Password=83583000
admin_Password=admin
user_Password=@l03e1t3
admin_password_random=1
user_password_random=0
guest_user=guest
guest_Password=123456
guest_password_random=0
tz_used_logo_file=ztelogo.png
tz_web_page_hide=
tz_web_user_hide=
tz_language_select_hide=1
tz_web_special_func=1f
RateLimitEnable=0
RateLimitRules_0=
RateLimitRules_1=
RateLimitRules_2=
RateLimitRules_3=
RateLimitRules_4=
RateLimitRules_5=
RateLimitRules_6=
RateLimitRules_7=
RateLimitRules_8=
RateLimitRules_9=
TZ_TR069_DATA_MODEL=
tr069_ServerURL=
tr069_ServerUsername=
tr069_ServerPassword=
tr069_ConnectionRequestUname=
tr069_ConnectionRequestPassword=
tr069_PeriodicInformInterval=86400000
tr069_PeriodicInformEnable=1
tr069_PeriodicInformTime=
tr069_ACS_auth=0
tr069_CPE_auth=0
tr069_SOAP_ENV=SOAP-ENV
tr069_SOAP_ENC=SOAP-ENC
tr069_use_test_config=0
tr069_ServerURL1=
tr069_ServerUsername1=
tr069_ServerPassword1=
tr069_ConnectionRequestUname1=
tr069_ConnectionRequestPassword1=
tr069_PeriodicInformInterval1=120
tr069_PeriodicInformEnable1=1
tr069_PeriodicInformTime1=
tr069_ACS_auth1=0
tr069_CPE_auth1=0
mmi_watchdog_flag=0
imei=
telnetd_enable=n
dropbear_enable=n
adbd_enable=n
DDNS_Mode=auto
tz_ssid2_enable=0
tz_ssid3_enable=0
SSID2=GlobeAtHome_
SSID3=GlobeAtHome_
HideSSID2=0
HideSSID3=0
MAX_Access_num2=16
MAX_Access_num3=16
AuthMode2=WPAPSKWPA2PSK
AuthMode3=WPAPSKWPA2PSK
EncrypType2=TKIPAES
EncrypType3=TKIPAES
WPAPSK2=12345678
WPAPSK3=12345678
WPAPSK2_encode=MTIzNDU2Nzg=
WPAPSK3_encode=MTIzNDU2Nzg=
tz_cvmod_state=3
tz_write_sn=
tz_ssid4_enable=0
SSID4=GlobeAtHome_
HideSSID4=0
MAX_Access_num4=16
AuthMode4=WPAPSKWPA2PSK
EncrypType4=TKIPAES
WPAPSK4=12345678
WPAPSK4_encode=MTIzNDU2Nzg=
is_show_sipServer=yes
sip_reg_server=
sip_reg_port=5060
sip_domain_address=
sip_domain_port=5060
sip_proxy_address=
sip_proxy_port=5060
sip_proxy_enable=0
sip_display_name=
sip_user_name=
sip_reg_account=
sip_reg_pwd=
sip_reg_filed=
tz_voice_type=0
multissid_psk_mode=0
plmn_unlock=0
unlock_plmn_psk=sztz@8358#
S2_Key1Str1=12345
S2_Key2Str1=
S2_Key3Str1=
S2_Key4Str1=
S2_Key1Type=1
S2_Key2Type=
S2_Key3Type=
S2_Key4Type=
S2_DefaultKeyID=
S3_Key1Str1=12345
S3_Key2Str1=
S3_Key3Str1=
S3_Key4Str1=
S3_Key1Type=1
S3_Key2Type=
S3_Key3Type=
S3_Key4Type=
S3_DefaultKeyID=
S4_Key1Str1=12345
S4_Key2Str1=
S4_Key3Str1=
S4_Key4Str1=
S4_Key1Type=1
S4_Key2Type=
S4_Key3Type=
S4_Key4Type=
S4_DefaultKeyID=
tz_rate_limit_enable=no
tz_rate_limit_down=
tz_rate_limit_up=
show_sim_spn=yes
tz_lanrecord_switch=0
siemprePic_hide=0
write_sn_switch=0
modify_firmware_version=V1.0
hide_modify_firmware_version=0
hide_all_wifi_settings=1
sms_encode_type=GSM7_default
wb_mode=1
sntp_server_list1=time-nw.nist.gov
sntp_server_list2=pool.ntp.org
sntp_server_list3=europe.pool.ntp.org
siempre_hide=0
siempre_text=SIEMPRE LTE DATA
ssid_and_pwd=0
hide_home_data_switch=0
tz_area_code=0
tz_change_password=
tz_change_user=
TZ_HEARTBEAT_INTERVAL=15
TZ_SYS_UPDATE_SERVER=
hide_lte_single=0
tz_traffic_share_switch=1
tz_lanrecord_times=3
tzphone_rapid_dial_0=
tzphone_cnfg_protect_pwd=
tzphone_ShortCut_phonenum_0=
tzphone_ShortCut_phonenum_1=
tzphone_ShortCut_phonenum_2=
tzphone_ShortCut_phonenum_3=
tzphone_ShortCut_phonenum_4=
tzphone_ShortCut_phonenum_5=
tzphone_ShortCut_phonenum_6=
tzphone_ShortCut_phonenum_7=
websURLFilters_2=
websURLFilters_1=
tz_wps_enable=1
quick_apn_hide=0
login_mexico_show=0
web_set_wan_http=1
tz_unlock_plmn_pwd=
tz_unlock_plmn_times=5
tz_unlock_private_mark=*#865625#
tz_plmn_private_mark=*#7566#
tz_allow_ping_net=0
hubei_check_imsi=0
control_apn_edit=yes
control_sms_edit=yes
login_enter_apn=no
tz_allow_redial_cfun=0
tz_change_theme=main.strong.css
set_show_network_mode=no
tz_close_gms=0
login_Italia_show=0
hide_at_send=no
tz_emergency_num_list=
tr069_area_operator_code=0
p25k_lithuania_web_show=no
hotspot_enable=0
hotspot_eap_enable=0
hotspot_eap_radius_ip=
hotspot_eap_radius_port=
hotspot_eap_radius_secret=
is_show_hotspot_web=no
tz_alarm0_caption=
tz_alarm0_time=
tz_alarm0_cycle=
tz_alarm0_ring_type=
tz_alarm1_caption=
tz_alarm1_time=
tz_alarm1_cycle=
tz_alarm1_ring_type=
tz_alarm2_caption=
tz_alarm2_time=
tz_alarm2_cycle=
tz_alarm2_ring_type=
static_route_0=
static_route_1=
static_route_2=
static_route_3=
static_route_4=
static_route_5=
static_route_6=
static_route_7=
static_route_8=
static_route_9=
static_route_10=
static_route_11=
static_route_12=
static_route_13=
static_route_14=
static_route_15=
static_route_16=
static_route_17=
static_route_18=
static_route_19=
add_special_login_page=0
######TOZED新增NV END########
dhcp2_Dns=
dhcp2_Enabled=1
va0_dhcp2_Dns=
va0_dhcp2_Enabled=1
va1_dhcp2_Dns=
va1_dhcp2_Enabled=1
is_show_2g_select=yes
######
######
END
cat > /yaffs/apply_config.conf <<-END
export tz_config_file_version_s="S10G_Globe_Consumer-v2.3"
export tz_lock_band_state_s="yes"
export tz_lock_plmn_state_s="no"
export tz_lock_plmn_list_s=""
export mac_rm_special_letters_s="0"
export dialog_ssid_password_s="0"
export show_sim_spn_u="yes"
export tz_voice_support_s="0"
export apn_mode_u="manual"
export apn_index_u="0"
export default_apn_profile_name_T="Production APN"
export default_apn_name_T="athome.globe.com.ph"
export config1_apn_profile_name_T="Staging APN"
export config1_apn_name_T="F1.globe.com.ph"
export tz_used_logo_file_u="ztelogo.png"
export tr069_app_enable_s="1"
export tr069_ServerURL_u=""
export tr069_PeriodicInformEnable_u="1"
export tr069_PeriodicInformInterval_u="8640000"
export tr069_ACS_auth_u="0"
export tr069_ServerUsername_u=""
export tr069_ServerPassword_u=""
export tr069_CPE_auth_u="0"
export tr069_ConnectionRequestUname_u=""
export tr069_ConnectionRequestPassword_u=""
export tr069_use_test_config_u="0"
export tr069_ServerURL1_u=""
export tr069_PeriodicInformEnable1_u="1"
export tr069_PeriodicInformInterval1_u="120"
export tr069_ACS_auth1_u="0"
export tr069_ServerUsername1_u=""
export tr069_ServerPassword1_u=""
export tr069_CPE_auth1_u="0"
export tr069_ConnectionRequestUname1_u=""
export tr069_ConnectionRequestPassword1_u=""
export tr069_ModelName_s="S10G"
export tr069_ProductClass_s="ZLT S10G"
export tr069_DeviceSummary_s="InternetGatewayDevice:1.1[](WiFiLAN:1,WAN:1,Time:1)"
export tr069_Description_s="S10G 4G CPE"
export tr069_Manufacturer_s="Shenzhen Tozed Technologies Co., Ltd"
export user_user_u="user"
export user_Password_u="@l03e1t3"
export ssid_head_s="GlobeAtHome_"
export wifi_ssid_gen_with_mac_lastbyte_s="5"
export MAX_Station_num_s="16"
export wifi_key_gen_type_s="MAC"
export dhcpEnabled_u="1"
export lan_ipaddr_u="192.168.254.254"
export lan_netmask_u="255.255.255.0"
export dhcpStart_u="192.168.254.100"
export dhcpEnd_u="192.168.254.200"
export dhcpDns_u="192.168.254.254"
export dhcpLease_hour_u="24"
export tz_wifi_channel_low_s="1"
export tz_wifi_channel_hi_s="11"
export tz_wifi_ch_hi_max_s="11"
export SSID2_u="GlobeAtHome_"
export SSID3_u="GlobeAtHome_"
export SSID4_u="GlobeAtHome_"
export AuthMode_u="WPAPSKWPA2PSK"
export AuthMode2_u="WPAPSKWPA2PSK"
export AuthMode3_u="WPAPSKWPA2PSK"
export AuthMode4_u="WPAPSKWPA2PSK"
export CountryCode_u="PH"
export admin_user_u="admin"
export admin_password_random_u="1"
export net_select_u="Only_LTE"
export tz_macwriter_switch_s="0"
export tz_usb_downloader_s="1"
export tz_usb_support_s="0"
export IPPortFilterEnable_u="1"
export PortMapEnable_u="1"
export PortForwardEnable_u="1"
export tz_ddos_status_s="1"
export LocalDomain_u="globebroadband.net"
export tz_language_select_hide_u="1"
export hide_at_send_u="no"
export set_show_network_mode_u="no"
export siproxd_enable_s="0"
export pdp_type_u="IPv4v6"
export tz_lock_band_list_s="18008000004"
export tz_display_band_list_s="18008000004"
export tz_web_special_func_u="1f"
export tz_web_page_hide_u=""
export tz_web_user_hide_u=""
END
