
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pybind11-catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-py-binding-tools";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/py_binding_tools-release/archive/release/noetic/py_binding_tools/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a63214b08ef0380a72a683a41683f7a81c98e096a55fbafd9a1e577fc394c125";
  };

  buildType = "catkin";
  buildInputs = [ catkin pybind11-catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python binding tools for C++'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
