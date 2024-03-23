
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-osrf-pycommon";
  version = "2.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/rolling/osrf_pycommon/2.1.4-2.tar.gz";
    name = "2.1.4-2.tar.gz";
    sha256 = "ee69640a6c420c96234dee7d52a4e1ebd6703c871724958a0873ab429c1fd8b0";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = "Commonly needed Python modules, used by Python software developed at OSRF.";
    license = with lib.licenses; [ asl20 ];
  };
}
