
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-controller-manager-example";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_controller_manager_example/0.9.15-0.tar.gz;
    sha256 = "50de8fcce17603dd779eece96165df5f20e08c0f6ef90adbedc8c26b5067aa52";
  };

  buildInputs = [ pluginlib roscpp moveit-core ];
  propagatedBuildInputs = [ pluginlib roscpp moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An example controller manager plugin for MoveIt. This is not functional code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
