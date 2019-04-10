
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, unzip }:
buildRosPackage {
  pname = "ros-lunar-convex-decomposition";
  version = "0.1.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/convex_decomposition-release/archive/release/lunar/convex_decomposition/0.1.11-0.tar.gz;
    sha256 = "e556a6673f9bfa83ba4b7a6ee9a46adb0a339497879da49a371b369417fe9276";
  };

  buildInputs = [ unzip ];
  propagatedBuildInputs = [ unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Convex Decomposition Tool for Robot Model'';
    #license = lib.licenses.MIT;
  };
}
