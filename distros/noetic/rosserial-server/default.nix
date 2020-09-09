
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosserial-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-rosserial-server";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_server/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "e47755e66a3b8f1a48a755197c7631a577e3b61e7473ffc8d0abe34a1fa58897";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rosserial-msgs std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A more performance- and stability-oriented server alternative implemented
    in C++ to rosserial_python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
