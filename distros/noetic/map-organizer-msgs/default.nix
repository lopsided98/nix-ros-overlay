
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-map-organizer-msgs";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/noetic/map_organizer_msgs/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "ffe0ca6b9f2dfb1921ba6c8fe3c5ec63be83ea437b4c53d6ca3d6cf6f3903976";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for map_organizer_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
