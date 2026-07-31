
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, builtin-interfaces, easynav-interfaces, geometry-msgs, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-easynav-support-py";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/lyrical/easynav_support_py/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "c9954334d06b4c7c158f972c9107c425711e78e99f6ec080dc9eb5af4592bc41";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces easynav-interfaces geometry-msgs rclpy std-msgs ];

  meta = {
    description = "Support utilities for EasyNav in Python: GoalManagerClient and tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
