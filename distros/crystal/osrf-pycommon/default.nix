
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-crystal-osrf-pycommon";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/crystal/osrf_pycommon/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "0b57f393c62abbe990c23c9b55272fc0e97d402ef68d2e9f7fc3c3a66f4c9d97";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.mock ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
