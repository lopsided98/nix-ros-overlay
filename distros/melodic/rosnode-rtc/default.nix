
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openrtm-tools, roscpp-tutorials, rospy, rostopic }:
buildRosPackage {
  pname = "ros-melodic-rosnode-rtc";
  version = "1.4.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/melodic/rosnode_rtc/1.4.3-1.tar.gz";
    name = "1.4.3-1.tar.gz";
    sha256 = "67abf6f423674d1ae9d0f5e41197ee68ae00697f676338b98ec345fd7af8eee8";
  };

  buildType = "catkin";
  buildInputs = [ catkin roscpp-tutorials rospy rostopic ];
  propagatedBuildInputs = [ openrtm-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package gives transparency between RTM and ROS.

     rtmros-data-bridge.py is a RT-Component for dataport/topic.
     This automatically convert ROS/topic into RTM/dataport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
