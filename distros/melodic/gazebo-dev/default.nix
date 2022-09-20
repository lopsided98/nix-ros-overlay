
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo_9 }:
buildRosPackage {
  pname = "ros-melodic-gazebo-dev";
  version = "2.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_dev/2.8.7-1.tar.gz";
    name = "2.8.7-1.tar.gz";
    sha256 = "6f4a77811479925460c669ec6b9bd8c883c0e932a848affadaa81c9aac8f6b41";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo_9 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
