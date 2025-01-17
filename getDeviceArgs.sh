#!/bin/bash

devicePattern=$1

if [ "$devicePattern" == "" ]; then
	exit -1
fi

BASEDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ${BASEDIR}/set_selenium_properties.sh

name=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${name_position}`
export name=$(echo $name)

type=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${type_position}`
export type=$(echo $type)

os_version=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${os_version_position}`
export os_version=$(echo $os_version)

udid=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${udid_position}`
export udid=$(echo $udid)

appium_port=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${appium_port_position}`
export appium_port=$(echo $appium_port)

wda_port=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${wda_port_position}`
export wda_port=$(echo $wda_port)

mjpeg_port=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${mjpeg_port_position}`
export mjpeg_port=$(echo $mjpeg_port)

iwdp_port=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${iwdp_port_position}`
export iwdp_port=$(echo $iwdp_port)

stf_min_port=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${stf_min_port_position}`
export stf_min_port=$(echo $stf_min_port)

stf_max_port=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${stf_max_port_position}`
export stf_max_port=$(echo $stf_max_port)

device_ip=`cat ${devices} | grep "$devicePattern" | cut -d '|' -f ${device_ip_position}`
export device_ip=$(echo $device_ip)
