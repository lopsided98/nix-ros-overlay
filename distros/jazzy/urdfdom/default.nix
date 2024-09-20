
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, python3, tinyxml-2, tinyxml2-vendor, urdfdom-headers }:
buildRosPackage {
  pname = "ros-jazzy-urdfdom";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/jazzy/urdfdom/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "89e127d74dd777402cc802ac8102d3b9ba475d0d62f51d2056743a1da1882777";
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
