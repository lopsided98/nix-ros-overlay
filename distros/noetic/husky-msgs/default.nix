
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-husky-msgs";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_msgs/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "987db29f075edf2453fb6e1de2b294127c3aa63956b06c9c8c80dd7216d61df4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
