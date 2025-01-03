
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-humble-osrf-pycommon";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/humble/osrf_pycommon/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "7eb7f928ef424bd59d5a691afc7ea4c7fb508022a3df6da8f8700b5503abe54d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = "Commonly needed Python modules, used by Python software developed at OSRF.";
    license = with lib.licenses; [ asl20 ];
  };
}
