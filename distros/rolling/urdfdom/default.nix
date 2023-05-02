
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, python3, tinyxml, tinyxml-vendor, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdfdom";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/rolling/urdfdom/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "2d96ef99eb8fe8659be95374714d9b2f263fd3139e99f936c6ba02d6275d70c2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ python3 ];
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml tinyxml-vendor urdfdom-headers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A library to access URDFs using the DOM model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
