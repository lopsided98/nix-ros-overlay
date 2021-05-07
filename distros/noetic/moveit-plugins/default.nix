
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-fake-controller-manager, moveit-ros-control-interface, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-noetic-moveit-plugins";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_plugins/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "084587749d27de3a91c8a256a8b5cfe610f0644c6e0804a41b8b1cdee6a5bce4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-control-interface moveit-simple-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for MoveIt plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
