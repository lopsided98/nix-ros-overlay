
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-fake-controller-manager, moveit-ros-control-interface, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-noetic-moveit-plugins";
  version = "1.1.13-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_plugins/1.1.13-2.tar.gz";
    name = "1.1.13-2.tar.gz";
    sha256 = "d8c23e36e12037ee22783ba0ff92a9112c2e75f73b8403977325b854c9cbcc7a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-control-interface moveit-simple-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for MoveIt plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
