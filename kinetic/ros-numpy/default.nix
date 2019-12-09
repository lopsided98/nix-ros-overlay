
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, pythonPackages, tf, catkin, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ros-numpy";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/eric-wieser/ros_numpy-release/archive/release/kinetic/ros_numpy/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "90de93f399a745aafbaba926fe30d11de3aa89a5262b536353d84c6a7518e492";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.numpy sensor-msgs geometry-msgs tf rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of conversion function for extracting numpy arrays from messages'';
    license = with lib.licenses; [ mit ];
  };
}
