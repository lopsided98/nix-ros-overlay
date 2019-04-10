
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazeboSimulator }:
buildRosPackage {
  pname = "ros-lunar-gazebo-dev";
  version = "2.7.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_dev/2.7.6-0.tar.gz;
    sha256 = "eda5ad2b43e1cec89a90ca7a50fdcf153878a9f89de9734a1355ebb525d26dcd";
  };

  propagatedBuildInputs = [ gazeboSimulator.gazebo7 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    #license = lib.licenses.Apache 2.0;
  };
}
