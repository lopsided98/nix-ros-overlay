
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, seed-r7-bringup, seed-r7-description, seed-r7-moveit-config, seed-r7-navigation, seed-r7-robot-interface, seed-r7-ros-controller, seed-r7-samples, seed-r7-typef-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-ros-pkg";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_ros_pkg/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "ff174dbf508512dbdbe02ddbb31b719aa1702c9668854b622293ccf93dd2de39";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ seed-r7-bringup seed-r7-description seed-r7-moveit-config seed-r7-navigation seed-r7-robot-interface seed-r7-ros-controller seed-r7-samples seed-r7-typef-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_ros_pkg package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
