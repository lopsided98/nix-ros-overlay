
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, builtin-interfaces, easynav-interfaces, geometry-msgs, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-support-py";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_support_py/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "7743277130eb46310232b8fd109310e345c19ffcfdf1a249a17de64e6f95b66d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces easynav-interfaces geometry-msgs rclpy std-msgs ];

  meta = {
    description = "Support utilities for EasyNav in Python: GoalManagerClient and tests.";
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
