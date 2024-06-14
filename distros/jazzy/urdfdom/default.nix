
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, python3, tinyxml-2, tinyxml2-vendor, urdfdom-headers }:
buildRosPackage {
  pname = "ros-jazzy-urdfdom";
  version = "4.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/jazzy/urdfdom/4.0.0-3.tar.gz";
    name = "4.0.0-3.tar.gz";
    sha256 = "a635c5687985d166ceb09ebefecfafc74f344623c7e0fa15c993e6241d34e800";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ python3 ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml-2 tinyxml2-vendor urdfdom-headers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A library to access URDFs using the DOM model.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
