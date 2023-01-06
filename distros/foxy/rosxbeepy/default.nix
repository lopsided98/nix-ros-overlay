
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-foxy-rosxbeepy";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/Sudharsan10/ROSXBee-release/archive/release/foxy/rosxbeepy/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "e54e519941091da234061390d26f379e90f26f705125f4a1f9bcca6a27fa2617";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = ''A ROS2 wrapper for xbee devices using digi-xbee python API'';
    license = with lib.licenses; [ "TODO-License-declaration" ];
  };
}
