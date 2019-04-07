
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, catkin, ieee80211-channels, rospy, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-hostapd-access-point";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/hostapd_access_point/1.0.15-0.tar.gz;
    sha256 = "e12d76fdbde92293ff72cc2ff0393e826e2008e23e01f7031aac00ed4a2c3f13";
  };

  buildInputs = [ rospy ieee80211-channels access-point-control dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy ieee80211-channels access-point-control dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that controls a hostapd-based access
    point. It is mainly intended for use with a wireless 
    network adapter running in master mode. It implements 
    the dynamic_reconfigure interface defined
    in the [[access_point_control]] package.'';
    #license = lib.licenses.BSD;
  };
}
