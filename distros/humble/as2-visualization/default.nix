
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, as2-gazebo-assets, python3Packages, robot-state-publisher, ros-gz, rviz2, sdformat-urdf }:
buildRosPackage {
  pname = "ros-humble-as2-visualization";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_visualization/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "31a1667e9d97257d8bd3ee6e96d4160ff4d9c35c4db08ee936bc6c1ab3049073";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ as2-gazebo-assets robot-state-publisher ros-gz rviz2 sdformat-urdf ];

  meta = {
    description = "Aerostack2 Visualization Tools";
    license = with lib.licenses; [ bsd3 ];
  };
}
