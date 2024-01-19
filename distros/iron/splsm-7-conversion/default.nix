
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, splsm-7 }:
buildRosPackage {
  pname = "ros-iron-splsm-7-conversion";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/iron/splsm_7_conversion/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "02b8d80fac26f13b00569bdd5aca21cbd2e520da9da3036242ed316806827296";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.construct splsm-7 ];

  meta = {
    description = ''Converts Standard Platform League Standard Message V7 between ROS msg and UDP raw bytes'';
    license = with lib.licenses; [ asl20 ];
  };
}
