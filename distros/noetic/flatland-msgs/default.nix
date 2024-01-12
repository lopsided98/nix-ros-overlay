
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-flatland-msgs";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/avidbots/flatland-release/archive/release/noetic/flatland_msgs/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "70e84afd28b1012ccad7d9ee1b06479884e6073deac7bf22dd99dc9943dc61c2";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The flatland_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
