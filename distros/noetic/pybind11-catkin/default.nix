
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-pybind11-catkin";
  version = "2.10.3-r2";

  src = fetchurl {
    url = "https://github.com/wxmerkt/pybind11_catkin-release/archive/release/noetic/pybind11_catkin/2.10.3-2.tar.gz";
    name = "2.10.3-2.tar.gz";
    sha256 = "67aad56cecc26d9560b00c8745ac2e651734508842455965e35d23f7c97c176c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package vendoring recent versions of pybind11 and providing extra macros for easier integration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
