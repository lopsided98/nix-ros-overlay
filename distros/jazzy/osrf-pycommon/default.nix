
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-osrf-pycommon";
  version = "2.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/jazzy/osrf_pycommon/2.1.7-1.tar.gz";
    name = "2.1.7-1.tar.gz";
    sha256 = "97fa7dde0e4bd96299a22420c6c50b7a0b0ed14287fcb53674bddc825bb22eb1";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = "Commonly needed Python modules, used by Python software developed at OSRF.";
    license = with lib.licenses; [ asl20 ];
  };
}
