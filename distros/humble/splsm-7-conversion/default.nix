
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, splsm-7 }:
buildRosPackage {
  pname = "ros-humble-splsm-7-conversion";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/humble/splsm_7_conversion/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "97c110fa5fdae2ca301118f7fc2a8db8dd21d9f94292e8dcd509ebfb45057fb6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-7 ];

  meta = {
    description = ''Converts Standard Platform League Standard Message V7 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
