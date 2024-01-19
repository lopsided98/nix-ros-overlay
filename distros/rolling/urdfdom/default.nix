
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, python3, tinyxml-2, tinyxml2-vendor, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdfdom";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/rolling/urdfdom/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "f4ba357a9183cc8dc68a77a28eb1105750a24b001dddd50f6bf1e64d896ac1e4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ python3 ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml-2 tinyxml2-vendor urdfdom-headers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A library to access URDFs using the DOM model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
