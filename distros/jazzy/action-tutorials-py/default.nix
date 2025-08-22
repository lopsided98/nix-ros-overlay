
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-action-tutorials-py";
  version = "0.33.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/action_tutorials_py/0.33.6-1.tar.gz";
    name = "0.33.6-1.tar.gz";
    sha256 = "e65ef47d3b550ac69c2ddece4ff8eb24753271ed8f6de35d55c9d94a3beb76b5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclpy ];

  meta = {
    description = "Python action tutorial code";
    license = with lib.licenses; [ asl20 ];
  };
}
