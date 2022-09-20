
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, octomap, octomap-msgs, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-octomap-ros";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_ros-release/archive/release/melodic/octomap_ros/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "e66f9ef8bd86b238099ae4a3188262a92cabfc7e4a1294d2b843b548b0f69eb1";
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
