
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, python3, tinyxml-2, urdfdom-headers }:
buildRosPackage {
  pname = "ros-lyrical-urdfdom";
  version = "6.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/lyrical/urdfdom/6.0.0-3.tar.gz";
    name = "6.0.0-3.tar.gz";
    sha256 = "8341de38da49737d43f69e62774d9df80b54f1c777ccb05dbe8c2d8524e34aa3";
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
