
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-osrf-pycommon";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/galactic/osrf_pycommon/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "95ab86ece55c27b8d5d6d8a06b48d71e5f6cf2135c7fc39b996b16f17e9b6308";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.mock ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
