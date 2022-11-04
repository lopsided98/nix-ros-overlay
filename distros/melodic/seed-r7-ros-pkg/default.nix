
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, seed-r7-bringup, seed-r7-description, seed-r7-moveit-config, seed-r7-navigation, seed-r7-robot-interface, seed-r7-ros-controller, seed-r7-samples, seed-r7-typef-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-ros-pkg";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/seed_r7_ros_pkg/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "853aceab8b2fc4aabfff5d1e0461f46ecc314afc5686b4e9cf900b7baa8344ed";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ seed-r7-bringup seed-r7-description seed-r7-moveit-config seed-r7-navigation seed-r7-robot-interface seed-r7-ros-controller seed-r7-samples seed-r7-typef-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_ros_pkg package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
