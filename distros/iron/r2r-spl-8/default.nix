
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, splsm-8-conversion }:
buildRosPackage {
  pname = "ros-iron-r2r-spl-8";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/iron/r2r_spl_8/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "068c4fd6ea706b0d50e656afcb2d9d11840c8fffc0e19cbe34f5a9eca56a1894";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-8-conversion ];

  meta = {
    description = "Robot-To-Robot communication in RoboCup SPL";
    license = with lib.licenses; [ asl20 ];
  };
}
