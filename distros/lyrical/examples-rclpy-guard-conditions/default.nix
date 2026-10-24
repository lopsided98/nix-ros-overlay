
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-examples-rclpy-guard-conditions";
  version = "0.21.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/lyrical/examples_rclpy_guard_conditions/0.21.6-1.tar.gz";
    name = "0.21.6-1.tar.gz";
    sha256 = "699fba05199c464921881369fe71804c817b590d72708a7144bf3016a172be36";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = "Examples of using guard conditions.";
    license = with lib.licenses; [ asl20 ];
  };
}
