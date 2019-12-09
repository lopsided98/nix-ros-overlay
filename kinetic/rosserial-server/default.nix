
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-msgs, std-msgs, catkin, rosserial-python, roscpp, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-server";
  version = "0.7.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_server/0.7.7-0.tar.gz";
    name = "0.7.7-0.tar.gz";
    sha256 = "c0ffe69d61a2a6685a8cd858454400c55306e8388ee07ff66491f69629594188";
  };

  buildType = "catkin";
  buildInputs = [ topic-tools std-msgs rosserial-msgs roscpp ];
  propagatedBuildInputs = [ rosserial-msgs std-msgs rosserial-python roscpp topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A more performance- and stability-oriented server alternative implemented
    in C++ to rosserial_python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
