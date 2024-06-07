
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-fake-controller-manager, moveit-ros-control-interface, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-noetic-moveit-plugins";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_plugins/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "6c2e080587611554e1294464217051b1f91c2946b19b73bd205dd83678e171b0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-control-interface moveit-simple-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Metapackage for MoveIt plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
