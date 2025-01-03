
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-osrf-pycommon";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/jazzy/osrf_pycommon/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "1fecd245ff189e8c0867f804593f7c1ed1e31714f25491949e3a403dd1c77fbf";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = "Commonly needed Python modules, used by Python software developed at OSRF.";
    license = with lib.licenses; [ asl20 ];
  };
}
