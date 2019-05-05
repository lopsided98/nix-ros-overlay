
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, octomap-msgs, octomap, tf }:
buildRosPackage {
  pname = "ros-lunar-octomap-ros";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap_ros-release/archive/release/lunar/octomap_ros/0.4.0-1.tar.gz;
    sha256 = "edd2478dd7ef3cae39781cd2d8671b1b30d5f5d86bd001f54bd308d093d9541e";
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
