
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-lunar-moveit-controller-manager-example";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_controller_manager_example/0.9.12-1.tar.gz;
    sha256 = "49ac6d5d185236a3e938a97bcf20a4788e16c65af5578e740380fa40fba2dc7e";
  };

  buildInputs = [ pluginlib roscpp moveit-core ];
  propagatedBuildInputs = [ pluginlib roscpp moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An example controller manager plugin for MoveIt. This is not functional code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
