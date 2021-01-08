
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, robot-state-publisher, seed-r7-ros-controller, seed-r7-typef-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-bringup";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_bringup/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "ffdfc3a505b17a7a28b0c1093711a64b3cbf2c321ce309bdef3bbacd6b0c1e0e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager robot-state-publisher seed-r7-ros-controller seed-r7-typef-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
