
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2-msgs }:
buildRosPackage {
  pname = "ros-kinetic-static-transform-mux";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/peci1/static_transform_mux-release/archive/release/kinetic/static_transform_mux/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "12c0558a31c905242f62121ed1bf4959091df0b4e301ac25590623d35c4bacd7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A helper node that makes sure everybody knows about all static transforms, even if they are published by multiple publishers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
