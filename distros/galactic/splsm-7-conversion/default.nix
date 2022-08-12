
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, splsm-7 }:
buildRosPackage {
  pname = "ros-galactic-splsm-7-conversion";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/galactic/splsm_7_conversion/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9525ea20d229485fdc38c3eb11c0b80b762007b68e3b5f9f93a67e917d3352ce";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-7 ];

  meta = {
    description = ''Converts Standard Platform League Standard Message V7 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
