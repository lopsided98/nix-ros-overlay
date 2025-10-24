
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bluez, joy-linux, python3Packages, twist-mux }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bt-joy";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bt_joy/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "7d6efc1b09fc2b2516f681b15277aeca6da4ed2b508c411299141e5d99236652";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ bluez joy-linux twist-mux ];

  meta = {
    description = "Clearpath bluetooth joy controller signal quality monitoring node";
    license = with lib.licenses; [ bsd3 ];
  };
}
