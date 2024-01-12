
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, diff-drive-controller, gazebo-ros, position-controllers, robot-state-publisher, rqt-robot-steering, rviz2, urdf-tutorial, xacro }:
buildRosPackage {
  pname = "ros-iron-urdf-sim-tutorial";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_sim_tutorial-release/archive/release/iron/urdf_sim_tutorial/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f6b75c542e722a6c6101abd18bac16531e4aee1ac09a30f973446fd7d8535a6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller gazebo-ros position-controllers robot-state-publisher rqt-robot-steering rviz2 urdf-tutorial xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The urdf_sim_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
