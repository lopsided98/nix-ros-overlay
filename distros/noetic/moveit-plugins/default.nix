
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-fake-controller-manager, moveit-ros-control-interface, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-noetic-moveit-plugins";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_plugins/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "260daefd377c636be6053d5d2c5efe4a3f1deddc01397e54a7e30232c61d4fb2";
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
