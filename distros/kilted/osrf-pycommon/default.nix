
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-osrf-pycommon";
  version = "2.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/kilted/osrf_pycommon/2.1.6-1.tar.gz";
    name = "2.1.6-1.tar.gz";
    sha256 = "2f5ad2f5b201bc15a60e1acd24174c674738aa3ce719aa795f17f9ddedb85bda";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = "Commonly needed Python modules, used by Python software developed at OSRF.";
    license = with lib.licenses; [ asl20 ];
  };
}
