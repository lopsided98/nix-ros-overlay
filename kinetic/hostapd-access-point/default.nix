
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, ieee80211-channels, catkin, rospy, access-point-control }:
buildRosPackage {
  pname = "ros-kinetic-hostapd-access-point";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/hostapd_access_point/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "b19f0b5e51af5d98065ea5d3e639c12e24ba4906fd9964616ae96c868e079b1f";
  };

  buildType = "catkin";
  buildInputs = [ rospy access-point-control ieee80211-channels dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy access-point-control ieee80211-channels dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that controls a hostapd-based access
    point. It is mainly intended for use with a wireless 
    network adapter running in master mode. It implements 
    the dynamic_reconfigure interface defined
    in the [[access_point_control]] package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
