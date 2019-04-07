
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, catkin, ieee80211-channels, rospy, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-ddwrt-access-point";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/ddwrt_access_point/1.0.15-0.tar.gz;
    sha256 = "29bee91fa257585b0337e149aef9ff31390ae5bf538519b0c37ad8ca1b258927";
  };

  buildInputs = [ rospy ieee80211-channels access-point-control dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy ieee80211-channels access-point-control dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that controls a Linksys WRT610Nv2 access point with
    a dd-wrt firmware. Other access points models/dd-wrt versions
    may be compatible as long as the web interface is identical.'';
    #license = lib.licenses.BSD;
  };
}
