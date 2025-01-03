
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, splsm-7-conversion }:
buildRosPackage {
  pname = "ros-humble-r2r-spl-7";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/humble/r2r_spl_7/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "6fc3b62435b782132e68f3c61816e29eb653029f5e64e3b8931f90f79c36fae8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-7-conversion ];

  meta = {
    description = "Robot-To-Robot communication in RoboCup SPL using SPLSM V7";
    license = with lib.licenses; [ asl20 ];
  };
}
