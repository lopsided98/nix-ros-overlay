
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-pybind11-catkin";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/wxmerkt/pybind11_catkin-release/archive/release/noetic/pybind11_catkin/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "7504356d8938e0eaa880204ce834e03dcba505c73de7f83164110857ba0ad7cb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pybind11 package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
