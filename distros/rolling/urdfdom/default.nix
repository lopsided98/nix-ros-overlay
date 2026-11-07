
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, tinyxml-2, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdfdom";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/rolling/urdfdom/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "5dad37d2445b07deb482f184cba615122c812b4b93eca16f3d65b732439c62d1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml-2 urdfdom-headers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A library to access URDFs using the DOM model.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
