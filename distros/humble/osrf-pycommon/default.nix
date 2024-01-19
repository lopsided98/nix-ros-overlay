
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-humble-osrf-pycommon";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/humble/osrf_pycommon/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "99b61b77be91e9aa5bee393befcf4c9b5a21f5bed075b7b399880fbeb9d0412d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
