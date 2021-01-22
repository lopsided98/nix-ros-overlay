
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pythonPackages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-ros-numpy";
  version = "0.0.4-r5";

  src = fetchurl {
    url = "https://github.com/eric-wieser/ros_numpy-release/archive/release/noetic/ros_numpy/0.0.4-5.tar.gz";
    name = "0.0.4-5.tar.gz";
    sha256 = "180f2c1b702d154971d438181d55b6ee23748e1c14ce426f294f6bc6f0acbc9c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs pythonPackages.numpy rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of conversion function for extracting numpy arrays from messages'';
    license = with lib.licenses; [ mit ];
  };
}
