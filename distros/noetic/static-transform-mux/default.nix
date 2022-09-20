
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-static-transform-mux";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/peci1/static_transform_mux-release/archive/release/noetic/static_transform_mux/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "f21262353f684f756a1f1ebb9e88e7d335f767843d908267d532fab94ce7e2f1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A helper node that makes sure everybody knows about all static transforms, even if they are published by multiple publishers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
