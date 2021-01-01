
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openrtm-tools, roscpp-tutorials, rospy, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-rosnode-rtc";
  version = "1.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/rosnode_rtc/1.4.2-0.tar.gz";
    name = "1.4.2-0.tar.gz";
    sha256 = "bb126f1601b1d3d15caeec29ed19a1db359829af3420bfa411828125f6fcba71";
  };

  buildType = "catkin";
  buildInputs = [ roscpp-tutorials rospy rostopic ];
  propagatedBuildInputs = [ openrtm-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package gives transparency between RTM and ROS.

     rtmros-data-bridge.py is a RT-Component for dataport/topic.
     This automatically convert ROS/topic into RTM/dataport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
