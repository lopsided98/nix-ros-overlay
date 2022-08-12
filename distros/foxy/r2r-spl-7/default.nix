
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, splsm-7-conversion }:
buildRosPackage {
  pname = "ros-foxy-r2r-spl-7";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/foxy/r2r_spl_7/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "5c6bcfdea32ca4f932d3368007c266a821538565faf6d1f79e1e4ff7790ee0a4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-7-conversion ];

  meta = {
    description = ''Robot-To-Robot communication in RoboCup SPL using SPLSM V7'';
    license = with lib.licenses; [ asl20 ];
  };
}
