
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, diff-drive-controller, gazebo-ros, position-controllers, robot-state-publisher, rqt-robot-steering, rviz2, urdf-tutorial, xacro }:
buildRosPackage {
  pname = "ros-humble-urdf-sim-tutorial";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_sim_tutorial-release/archive/release/humble/urdf_sim_tutorial/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "66a652f3b3e258188824fa6059bd2cfdd39aa67be22fc86c21e57226870e1d6c";
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
