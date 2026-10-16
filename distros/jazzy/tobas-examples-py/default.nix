
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy, tobas-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples-py";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples_py/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "d4bf6b76b3dd56b9299c841691029e9eb4210fa00be65e3871295a9f098dc406";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy tobas-msgs ];

  meta = {
    description = "Package containing example user scripts.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
