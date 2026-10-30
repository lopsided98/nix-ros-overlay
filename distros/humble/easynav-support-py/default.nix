
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, easynav-interfaces, geometry-msgs, nav-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-easynav-support-py";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/humble/easynav_support_py/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "afac2f0674cc4d72300e629d30fef26c3e037e0ecde47e4a557fcae9869253c8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ easynav-interfaces geometry-msgs nav-msgs rclpy ];

  meta = {
    description = "Support utilities for EasyNav in Python: GoalManagerClient and tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
