
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, console-bridge, console-bridge-vendor, tinyxml, tinyxml-vendor, urdfdom-headers }:
buildRosPackage {
  pname = "ros-eloquent-urdfdom";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/eloquent/urdfdom/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "dda88fd2077dfe1e1c9bce9b57cab51c109dfa486b02febe60112ac53319d053";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ console-bridge console-bridge-vendor tinyxml tinyxml-vendor urdfdom-headers ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A library to access URDFs using the DOM model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
