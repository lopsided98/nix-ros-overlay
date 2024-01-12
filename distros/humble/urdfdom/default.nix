
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, tinyxml, tinyxml-vendor, urdfdom-headers }:
buildRosPackage {
  pname = "ros-humble-urdfdom";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/humble/urdfdom/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "1156de83e0fc73b429680ac811a2b7ec97e7405afb88bdd3c1d1a6eb5a8eca04";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml tinyxml-vendor urdfdom-headers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A library to access URDFs using the DOM model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
