
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-flatland-msgs";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/avidbots/flatland-release/archive/release/noetic/flatland_msgs/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "ee81482a4671679d2d09242f1c3906131aa05db641ea9c308723d3e8f7f3145e";
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
