
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-py";
  version = "0.37.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_py/0.37.0-1.tar.gz";
    name = "0.37.0-1.tar.gz";
    sha256 = "3ea248de229db16b372797e33de5ba770344e501e0f601e258bc69992796a91b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = "Python action tutorial code";
    license = with lib.licenses; [ asl20 ];
  };
}
