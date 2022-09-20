
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, robot-state-publisher, seed-r7-ros-controller, seed-r7-typef-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-bringup";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/seed_r7_bringup/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "72c404e7e5759b24d61a7468cac8f8aecb59a70a399da74788599608db5b49dd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager robot-state-publisher seed-r7-ros-controller seed-r7-typef-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
