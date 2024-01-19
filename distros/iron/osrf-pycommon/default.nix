
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-iron-osrf-pycommon";
  version = "2.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/iron/osrf_pycommon/2.1.2-3.tar.gz";
    name = "2.1.2-3.tar.gz";
    sha256 = "eed5a9ab3988a9de8008b027556618f16262be283df515f0667a7a904c82f51f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
