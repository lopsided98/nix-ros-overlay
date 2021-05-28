
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, urdf }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-ur-e-description";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_ur_e_description/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "89cb528f84aa0013acd8c633e4f0249d0bfc32ece71d8d6f772cdec0b47c8034";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ urdf ];

  meta = {
    description = ''Universal Robot description for Webots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
