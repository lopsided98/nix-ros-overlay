
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-py";
  version = "0.35.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_py/0.35.1-1.tar.gz";
    name = "0.35.1-1.tar.gz";
    sha256 = "4aee429ab0db864be65408e4fdef0cc10d37028a83ff26e85544abf9fc12d3df";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = "Python action tutorial code";
    license = with lib.licenses; [ asl20 ];
  };
}
