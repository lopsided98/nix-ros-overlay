
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, robot-state-publisher, seed-r7-ros-controller, seed-r7-typef-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-bringup";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_bringup/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "682cafc904028fc8a9b163bbdcb392af29f3ec4cc5d73cee22b875248dc0255f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager robot-state-publisher seed-r7-ros-controller seed-r7-typef-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
