
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, catkin, ieee80211-channels, rospy, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-ddwrt-access-point";
  version = "1.0.13-r2";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/ddwrt_access_point/1.0.13-2.tar.gz";
    name = "1.0.13-2.tar.gz";
    sha256 = "51ff9825669976f1466b3c8c58a429f3a1e52dc108e007d717b78a7c74497d97";
  };

  buildType = "catkin";
  buildInputs = [ rospy ieee80211-channels access-point-control dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy ieee80211-channels access-point-control dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that controls a Linksys WRT610Nv2 access point with
    a dd-wrt firmware. Other access points models/dd-wrt versions
    may be compatible as long as the web interface is identical.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
