
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, rosserial-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-rosserial-server";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_server/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "108f4bd765f7d0c115c947849bad5a382068363e2715b8ea777bd2e716f52924";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost roscpp rosserial-msgs std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A more performance- and stability-oriented server alternative implemented
    in C++ to rosserial_python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
