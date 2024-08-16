
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, as2-gazebo-assets, pythonPackages, robot-state-publisher, ros-gz, rviz2, sdformat-urdf }:
buildRosPackage {
  pname = "ros-humble-as2-visualization";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_visualization/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "49886453e78643f0b1d9c97cc69dd61349f24cad8f4473c5e417603f41763243";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ as2-gazebo-assets robot-state-publisher ros-gz rviz2 sdformat-urdf ];

  meta = {
    description = "Aerostack2 Visualization Tools";
    license = with lib.licenses; [ bsd3 ];
  };
}
