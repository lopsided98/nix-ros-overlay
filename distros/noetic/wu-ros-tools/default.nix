
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, joy-listener, kalman-filter, rosbaglive }:
buildRosPackage {
  pname = "ros-noetic-wu-ros-tools";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/noetic/wu_ros_tools/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "7040e992f4f0d0c5a52568a1d1e3792c0114a331ebbf8db9267dfe57ba07b892";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ easy-markers joy-listener kalman-filter rosbaglive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tools for making a variety of generic ROS-related tasks easier.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
