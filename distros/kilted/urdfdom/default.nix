
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, python3, tinyxml-2, tinyxml2-vendor, urdfdom-headers }:
buildRosPackage {
  pname = "ros-kilted-urdfdom";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/kilted/urdfdom/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "7cbebd9e12bad1fabb314f6d6efa1b28928a5f6f48170bd94c5d1142160c0292";
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
