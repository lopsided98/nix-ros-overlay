
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-osrf-pycommon";
  version = "2.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/jazzy/osrf_pycommon/2.1.6-1.tar.gz";
    name = "2.1.6-1.tar.gz";
    sha256 = "28204dc7a7a9329cbe0f3c55361754f5d39aeaf7c3fb62de7ed2529e79ebe5fe";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = "Commonly needed Python modules, used by Python software developed at OSRF.";
    license = with lib.licenses; [ asl20 ];
  };
}
