
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, easynav-interfaces, geometry-msgs, nav-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-easynav-support-py";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/lyrical/easynav_support_py/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "d8de6c252e22201788857dab69b72373f52aae76aa773d57c8c81f9c6ac0398d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ easynav-interfaces geometry-msgs nav-msgs rclpy ];

  meta = {
    description = "Support utilities for EasyNav in Python: GoalManagerClient and tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
