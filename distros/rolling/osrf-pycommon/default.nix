
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-osrf-pycommon";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/rolling/osrf_pycommon/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "0d95f2e642248dd350eee61e3e2da22bd8c10408efe173f6dfc534fecf0d7367";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
