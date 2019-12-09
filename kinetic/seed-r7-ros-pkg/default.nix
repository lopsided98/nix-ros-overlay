
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, seed-r7-bringup, catkin, seed-r7-moveit-config, seed-r7-robot-interface, seed-r7-navigation, seed-r7-ros-controller, seed-r7-description, seed-r7-typef-moveit-config, seed-r7-samples }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-ros-pkg";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_ros_pkg/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "70c928534a5e2dea0d24a9eaf1edec28d9a2f7c29dea03378a8cba2c7bc9b460";
  };

  buildType = "catkin";
  buildInputs = [ seed-r7-bringup seed-r7-moveit-config seed-r7-robot-interface seed-r7-navigation seed-r7-ros-controller seed-r7-description seed-r7-typef-moveit-config seed-r7-samples ];
  propagatedBuildInputs = [ seed-r7-bringup seed-r7-moveit-config seed-r7-robot-interface seed-r7-navigation seed-r7-ros-controller seed-r7-description seed-r7-typef-moveit-config seed-r7-samples ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_ros_pkg package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
