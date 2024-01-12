
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, python3, roscpp, rosserial-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-rosserial-server";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_server/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "b6ce6492de950113b015041396436e87ed1ea1b0736b0f2d4bf842383b7531ee";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3 ];
  propagatedBuildInputs = [ boost roscpp rosserial-msgs std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A more performance- and stability-oriented server alternative implemented
    in C++ to rosserial_python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
