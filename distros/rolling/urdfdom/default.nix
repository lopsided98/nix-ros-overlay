
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, python3, tinyxml-2, tinyxml2-vendor, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdfdom";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/rolling/urdfdom/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "ed908b4207ecd89d5e6c8ad78197543feb1df07d4302d52491bd8c9e097f4850";
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
