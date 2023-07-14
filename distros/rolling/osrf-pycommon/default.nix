
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-osrf-pycommon";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/rolling/osrf_pycommon/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "78cc5fe80582e35a31cbd850b0048e2c7ad1d7a2951cdf60f7de505effe6cb66";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
