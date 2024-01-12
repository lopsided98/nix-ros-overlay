
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-compass-msgs";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/compass/-/archive/release/noetic/compass_msgs/1.0.3-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "22494df8c5ecfefce461afb39bb72a2113354dc729405c4f7129bb341831e88b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to compass'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
