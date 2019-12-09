
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, pluginlib, actionlib, catkin, roscpp, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-simple-controller-manager";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_simple_controller_manager/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "2d9df58ece4beca42b4d6b27da0c2f308c866f5ea5842a63eaa2bbe7258499ee";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core pluginlib actionlib roscpp control-msgs ];
  propagatedBuildInputs = [ moveit-core pluginlib actionlib roscpp control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic, simple controller manager plugin for MoveIt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
