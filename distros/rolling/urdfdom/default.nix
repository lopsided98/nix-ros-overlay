
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, python3, tinyxml-2, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdfdom";
  version = "6.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/rolling/urdfdom/6.0.0-2.tar.gz";
    name = "6.0.0-2.tar.gz";
    sha256 = "b31af2a2acc061b49e370809377c119c1722b94eeab090cbe1b95bcc8abd88b8";
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
