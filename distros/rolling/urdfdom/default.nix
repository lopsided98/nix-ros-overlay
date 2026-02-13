
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, python3, tinyxml-2, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdfdom";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/rolling/urdfdom/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "820080238d4dc43f45a0fd812bfee81ba737ef22c0627062158cdd1461726b87";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ python3 ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml-2 urdfdom-headers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A library to access URDFs using the DOM model.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
