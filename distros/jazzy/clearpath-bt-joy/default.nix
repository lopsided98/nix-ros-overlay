
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bluez, joy-linux, python3Packages, twist-mux }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bt-joy";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bt_joy/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "b84c7026ab9d3f69d873e4faa61709c9495baf5071be17ca6d53500de51facf8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ bluez joy-linux twist-mux ];

  meta = {
    description = "Clearpath bluetooth joy controller signal quality monitoring node";
    license = with lib.licenses; [ bsd3 ];
  };
}
