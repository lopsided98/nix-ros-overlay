
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-warthog-msgs";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog-release/archive/release/noetic/warthog_msgs/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "01b26477c554dcdd53815449008cbea17ee04597760ac1ffe26ef589c6998c06";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Warthog, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
