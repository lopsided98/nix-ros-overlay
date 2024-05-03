
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, python3Packages, rospy, rostopic }:
buildRosPackage {
  pname = "ros-noetic-generic-throttle";
  version = "0.6.35-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/generic_throttle/0.6.35-2.tar.gz";
    name = "0.6.35-2.tar.gz";
    sha256 = "78cf9424b8e70269e91dbc3571f0ea86c3105875e5b1bda47447122c3eee4089";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cv-bridge rospy rostopic ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "This package provides a throttle for ROS topics";
    license = with lib.licenses; [ asl20 ];
  };
}
