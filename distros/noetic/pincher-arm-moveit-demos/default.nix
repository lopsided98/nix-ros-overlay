
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning-interface, roscpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-pincher-arm-moveit-demos";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/pincher_arm-release/archive/release/noetic/pincher_arm_moveit_demos/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "e0fd1b86aa0a8754da9d3c8579bc6c9c56e0ff5bcaa63a9323dfc86d351c96ec";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning-interface roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Moveit demos for the PhantomX Pincher arm.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
