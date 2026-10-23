
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy, tobas-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples-py";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples_py/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "39e16bc901eee8378eb95b84acd93e7e1c4e3bfa1bdeb5240219c0be7df2d80a";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy tobas-msgs ];

  meta = {
    description = "Package containing example user scripts.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
