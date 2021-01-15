
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, catkin, dynamic-reconfigure, ieee80211-channels, rospy }:
buildRosPackage {
  pname = "ros-kinetic-ddwrt-access-point";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/ddwrt_access_point/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "762f7009b740be0da0a975edeba3521816746d1f3b2faa36ccf42f1844f1c78e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ access-point-control dynamic-reconfigure ieee80211-channels rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that controls a Linksys WRT610Nv2 access point with
    a dd-wrt firmware. Other access points models/dd-wrt versions
    may be compatible as long as the web interface is identical.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
