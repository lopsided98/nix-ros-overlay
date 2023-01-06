
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, splsm-7 }:
buildRosPackage {
  pname = "ros-rolling-splsm-7-conversion";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/rolling/splsm_7_conversion/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "38e30d3ef0fffac0af0c445703df95e8608b02f6f3781dbe9904c5334612ead4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-7 ];

  meta = {
    description = ''Converts Standard Platform League Standard Message V7 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
