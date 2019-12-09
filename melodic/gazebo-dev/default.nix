
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazeboSimulator, catkin }:
buildRosPackage {
  pname = "ros-melodic-gazebo-dev";
  version = "2.8.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_dev/2.8.4-0.tar.gz";
    name = "2.8.4-0.tar.gz";
    sha256 = "8479a7d0ab9b939b03ad3f436e8bb3d6af22518143cdc51b822337941b1e62d5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazeboSimulator.gazebo9 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
