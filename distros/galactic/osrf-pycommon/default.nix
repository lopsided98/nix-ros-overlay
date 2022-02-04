
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-osrf-pycommon";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/galactic/osrf_pycommon/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "782931cdf7764634e712caf50e9444e285d111b5670a8fbe5d94b96a9d82206c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata python3Packages.mock ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
