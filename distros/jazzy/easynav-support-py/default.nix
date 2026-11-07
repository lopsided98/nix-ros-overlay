
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, easynav-interfaces, geometry-msgs, nav-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-easynav-support-py";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_support_py/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "eac4d30038d08927ec8323a381ee546013d88ea46e882b52116e010cdd2301eb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ easynav-interfaces geometry-msgs nav-msgs rclpy ];

  meta = {
    description = "Support utilities for EasyNav in Python: GoalManagerClient and tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
