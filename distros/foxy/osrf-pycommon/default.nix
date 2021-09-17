
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-osrf-pycommon";
  version = "0.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/foxy/osrf_pycommon/0.1.11-1.tar.gz";
    name = "0.1.11-1.tar.gz";
    sha256 = "62adc3d4029feb8f2baf55d7375d25f444e38e63a9c24795c78643e66d0d2b92";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.mock ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
