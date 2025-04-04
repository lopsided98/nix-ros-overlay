
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-humble-osrf-pycommon";
  version = "2.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/humble/osrf_pycommon/2.1.6-1.tar.gz";
    name = "2.1.6-1.tar.gz";
    sha256 = "c078a9e27c6c39f3646f4d6c6242500bc267f6da2bab029d175815eb44c4611a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = "Commonly needed Python modules, used by Python software developed at OSRF.";
    license = with lib.licenses; [ asl20 ];
  };
}
