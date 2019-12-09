
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdfdom-headers, tinyxml-vendor, console-bridge-vendor, cmake, tinyxml, console-bridge }:
buildRosPackage {
  pname = "ros-eloquent-urdfdom";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom-release/archive/release/eloquent/urdfdom/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "dda88fd2077dfe1e1c9bce9b57cab51c109dfa486b02febe60112ac53319d053";
  };

  buildType = "cmake";
  buildInputs = [ urdfdom-headers tinyxml-vendor console-bridge-vendor tinyxml console-bridge ];
  propagatedBuildInputs = [ urdfdom-headers tinyxml-vendor console-bridge-vendor tinyxml console-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A library to access URDFs using the DOM model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
