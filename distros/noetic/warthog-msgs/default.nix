
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-warthog-msgs";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog-release/archive/release/noetic/warthog_msgs/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "df6783d56b1fc349489c4c82bd96c58f38cfdb19bf605d7b5c3634066b95aeaa";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages exclusive to Warthog, especially for representing low-level motor commands and sensors.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
