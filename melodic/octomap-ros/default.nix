
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, octomap, octomap-msgs, tf, catkin }:
buildRosPackage {
  pname = "ros-melodic-octomap-ros";
  version = "0.4.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_ros-release/archive/release/melodic/octomap_ros/0.4.0-0.tar.gz";
    name = "0.4.0-0.tar.gz";
    sha256 = "50dca555a5c7883b74068ae676db17671fa15da854f2985ed4999feff70089fd";
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
