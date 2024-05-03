
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, game-controller-spl-interfaces, python3Packages, pythonPackages, r2r-spl-test-interfaces, rclpy, rosidl-parser }:
buildRosPackage {
  pname = "ros-humble-r2r-spl";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/humble/r2r_spl/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "1172b46c0731d0276238a8a7fd46ee04bc3e0a424788bf6f53a13251952dbd60";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.numpy pythonPackages.pytest r2r-spl-test-interfaces ];
  propagatedBuildInputs = [ game-controller-spl-interfaces python3Packages.construct rclpy rosidl-parser ];

  meta = {
    description = "Robot-to-Robot Communication in RoboCup Standard Platform League";
    license = with lib.licenses; [ asl20 ];
  };
}
