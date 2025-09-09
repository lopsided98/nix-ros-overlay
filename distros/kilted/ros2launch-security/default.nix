
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, demo-nodes-py, launch-ros, nodl-python, python3Packages, ros2launch, sros2 }:
buildRosPackage {
  pname = "ros-kilted-ros2launch-security";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2launch_security-release/archive/release/kilted/ros2launch_security/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "f672062ffce35e8352d63137e2f66288f98997ce01c94784c67a8429db2854c7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 demo-nodes-py launch-ros python3Packages.pytest ros2launch sros2 ];
  propagatedBuildInputs = [ ament-index-python nodl-python ros2launch sros2 ];

  meta = {
    description = "Security extensions for ros2 launch";
    license = with lib.licenses; [ asl20 ];
  };
}
