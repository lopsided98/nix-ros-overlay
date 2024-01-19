
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap, octomap-msgs, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-octomap-ros";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_ros-release/archive/release/noetic/octomap_ros/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "100e3f796c48ca1d15059bc3ae81ab4de01e997cfe1ce6222a5e514ea2b6dae1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ octomap octomap-msgs sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''octomap_ros provides conversion functions between ROS and OctoMap's native types.
    This enables a convenvient use of the octomap package in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
