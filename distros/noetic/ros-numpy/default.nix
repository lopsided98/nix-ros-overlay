
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pythonPackages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-ros-numpy";
  version = "0.0.4-r4";

  src = fetchurl {
    url = "https://github.com/eric-wieser/ros_numpy-release/archive/release/noetic/ros_numpy/0.0.4-4.tar.gz";
    name = "0.0.4-4.tar.gz";
    sha256 = "5c7ca840934f6df9dfc0559ef0ff07c9fabaaae1cc20eaada127f61bf13b9b60";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs pythonPackages.numpy rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of conversion function for extracting numpy arrays from messages'';
    license = with lib.licenses; [ mit ];
  };
}
