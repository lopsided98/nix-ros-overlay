
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslib, variant-msgs }:
buildRosPackage {
  pname = "ros-kinetic-variant-topic-tools";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/kinetic/variant_topic_tools/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "482aa06d21a259c8e3fd1e693787ca62ebbf67c949ef88abb8f424d4f7a5a7f9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp roslib variant-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Topic tools for treating messages as variant types.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
