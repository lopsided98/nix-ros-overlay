
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, octomap, octomap-msgs, tf, catkin }:
buildRosPackage {
  pname = "ros-kinetic-octomap-ros";
  version = "0.4.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_ros-release/archive/release/kinetic/octomap_ros/0.4.0-0.tar.gz";
    name = "0.4.0-0.tar.gz";
    sha256 = "fd2a63942add5b97f2d64aa2396931744efc704d4b4aef4465346aa016005544";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs octomap octomap-msgs tf catkin ];
  propagatedBuildInputs = [ octomap sensor-msgs octomap-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''octomap_ros provides conversion functions between ROS and OctoMap's native types.
    This enables a convenvient use of the octomap package in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
