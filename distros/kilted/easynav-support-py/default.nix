
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, builtin-interfaces, easynav-interfaces, geometry-msgs, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-support-py";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_support_py/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "2e9e20c9f566a680daaa18547995b4188e01c81a63aad5312cafbaf5d308e2e6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces easynav-interfaces geometry-msgs rclpy std-msgs ];

  meta = {
    description = "Support utilities for EasyNav in Python: GoalManagerClient and tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
