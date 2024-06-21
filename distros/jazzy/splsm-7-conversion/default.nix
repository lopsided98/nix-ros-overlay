
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, splsm-7 }:
buildRosPackage {
  pname = "ros-jazzy-splsm-7-conversion";
  version = "3.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/jazzy/splsm_7_conversion/3.0.1-4.tar.gz";
    name = "3.0.1-4.tar.gz";
    sha256 = "dce848cae9f906e4a35a84a2a80bcfd02800dabf95b474088c9b6d94f8ca0b4e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-7 ];

  meta = {
    description = "Converts Standard Platform League Standard Message V7 between ROS msg and UDP raw bytes";
    license = with lib.licenses; [ asl20 ];
  };
}
