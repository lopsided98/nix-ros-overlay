
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, as2-gazebo-assets, pythonPackages, robot-state-publisher, ros-gz, rviz2, sdformat-urdf }:
buildRosPackage {
  pname = "ros-humble-as2-visualization";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_visualization/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "653b0ad1037db9fd0c9b295e77c99f753f6a540319052d05c4843d8a87422203";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ as2-gazebo-assets robot-state-publisher ros-gz rviz2 sdformat-urdf ];

  meta = {
    description = "Aerostack2 Visualization Tools";
    license = with lib.licenses; [ bsd3 ];
  };
}
