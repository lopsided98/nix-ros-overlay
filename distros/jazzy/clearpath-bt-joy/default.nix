
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bluez, joy-linux, python3Packages, twist-mux }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bt-joy";
  version = "2.8.2-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bt_joy/2.8.2-2.tar.gz";
    name = "2.8.2-2.tar.gz";
    sha256 = "9f45e3461fe8461ae372b925f970472fc1a345b06d058dfa10f5152ac195666e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ bluez joy-linux twist-mux ];

  meta = {
    description = "Clearpath bluetooth joy controller signal quality monitoring node";
    license = with lib.licenses; [ bsd3 ];
  };
}
