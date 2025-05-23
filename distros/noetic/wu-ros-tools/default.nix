
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, joy-listener, kalman-filter, rosbaglive }:
buildRosPackage {
  pname = "ros-noetic-wu-ros-tools";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/noetic/wu_ros_tools/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "ad6ca85183f1ea189264416441d42d5332180b006a156d02167151ce4e745d8d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ easy-markers joy-listener kalman-filter rosbaglive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A collection of tools for making a variety of generic ROS-related tasks easier.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
