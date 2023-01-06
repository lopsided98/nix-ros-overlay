
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-husky-msgs";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_msgs/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "2338dd5bdab729f9faeba52e951e1bbe227c598f74703ca779d0a858e2c348c9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
