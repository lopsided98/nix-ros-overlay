
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, splsm-7-conversion }:
buildRosPackage {
  pname = "ros-humble-r2r-spl-7";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/humble/r2r_spl_7/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "f5ca4a67fc245d933b43ebe7728fa4927c19327c078fda027874a7f59c9bd89c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-7-conversion ];

  meta = {
    description = ''Robot-To-Robot communication in RoboCup SPL using SPLSM V7'';
    license = with lib.licenses; [ asl20 ];
  };
}
