
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, ieee80211-channels, catkin, rospy, access-point-control }:
buildRosPackage {
  pname = "ros-melodic-hostapd-access-point";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/hostapd_access_point/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "ab8712b49eb1b1b3cd7b99e4966225807714ea52a589777089d9fb99ea5ed293";
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
