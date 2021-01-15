
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-jaguar-description";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_description/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "e18b6815a1f4e2bfa9e27f96b7513f23c31a08394fae025f003eb340a51b6b66";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp tf urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A robot description package for Dr Robot's Jaguar 4x4'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
