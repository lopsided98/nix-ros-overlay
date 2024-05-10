
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, splsm-8-conversion }:
buildRosPackage {
  pname = "ros-humble-r2r-spl-8";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/humble/r2r_spl_8/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "651dfed54555c49e7cb0cbf8f458fa4ddd40236a2387836d86c0c58fefda3d12";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy splsm-8-conversion ];

  meta = {
    description = "Robot-To-Robot communication in RoboCup SPL";
    license = with lib.licenses; [ asl20 ];
  };
}
