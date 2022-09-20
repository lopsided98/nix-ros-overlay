
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, catkin, dynamic-reconfigure, ieee80211-channels, rospy }:
buildRosPackage {
  pname = "ros-melodic-ddwrt-access-point";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/ddwrt_access_point/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "830e0935e4c51771f33e52de0645e5e4814bbde19b6fc7c30fab57f83e45264a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ access-point-control dynamic-reconfigure ieee80211-channels rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that controls a Linksys WRT610Nv2 access point with
    a dd-wrt firmware. Other access points models/dd-wrt versions
    may be compatible as long as the web interface is identical.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
