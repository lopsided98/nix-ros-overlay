
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-jackal-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "f9115648d7b2cb878751d3a793f5eac53954c24b603360f1165ac78b2edb588d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Jackal, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
