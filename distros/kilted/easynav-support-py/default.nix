
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, builtin-interfaces, easynav-interfaces, geometry-msgs, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-support-py";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_support_py/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "305de5192467dc59e0f03be288173488e65709605a6c0fd945670c4bbc2a0593";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces easynav-interfaces geometry-msgs rclpy std-msgs ];

  meta = {
    description = "Support utilities for EasyNav in Python: GoalManagerClient and tests.";
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
