
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, splsm-7 }:
buildRosPackage {
  pname = "ros-iron-splsm-7-conversion";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/iron/splsm_7_conversion/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "cc2cd5b52e69e302fc88ed86e8b520d89fa36d86f1f2e8df206dfb3142efa387";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-7 ];

  meta = {
    description = "Converts Standard Platform League Standard Message V7 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
