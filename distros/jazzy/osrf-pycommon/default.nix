
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-osrf-pycommon";
  version = "2.1.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/jazzy/osrf_pycommon/2.1.4-3.tar.gz";
    name = "2.1.4-3.tar.gz";
    sha256 = "9a5eac6f997624fb8a81787bb2a188d40381ccd7a49757a96f28f6c49e7776b6";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = "Commonly needed Python modules, used by Python software developed at OSRF.";
    license = with lib.licenses; [ asl20 ];
  };
}
