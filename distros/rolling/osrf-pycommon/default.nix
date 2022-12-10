
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-osrf-pycommon";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/rolling/osrf_pycommon/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "eafee255e0db354c281db4743751ac231aa0ccbfe8a7f398ef1ee774116f957a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
