
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, octomap-msgs, octomap, tf }:
buildRosPackage {
  pname = "ros-kinetic-octomap-ros";
  version = "0.4.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap_ros-release/archive/release/kinetic/octomap_ros/0.4.0-0.tar.gz;
    sha256 = "fd2a63942add5b97f2d64aa2396931744efc704d4b4aef4465346aa016005544";
  };

  buildInputs = [ sensor-msgs catkin octomap-msgs octomap tf ];
  propagatedBuildInputs = [ sensor-msgs tf octomap octomap-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''octomap_ros provides conversion functions between ROS and OctoMap's native types.
    This enables a convenvient use of the octomap package in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
