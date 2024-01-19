
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-costmap-cspace-msgs";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/noetic/costmap_cspace_msgs/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "090a6d216bc8b888b277af58f52e71fa34294626501811223c64d04f47cbbc0a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for costmap_cspace package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
