
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-static-transform-mux";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/peci1/static_transform_mux-release/archive/release/noetic/static_transform_mux/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "87ab7e2def917975a8972fb4a1d38e9758b6116b5905c7168ade03de68ed6250";
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
