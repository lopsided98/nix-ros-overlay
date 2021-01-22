
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-osrf-pycommon";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/foxy/osrf_pycommon/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "6364a61ed9dda779546c10506c5097203e8ece2413e49b9c6dc4dc259692ea0b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.mock ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
