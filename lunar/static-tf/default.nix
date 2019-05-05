
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, tf2-ros, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-static-tf";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/wu-robotics/static_tf_release/archive/release/lunar/static_tf/0.0.2-0.tar.gz;
    sha256 = "bd27aa8030ef7d0818ee64f016673d3ad662f376f87257e7268fbee7932ce058";
  };

  buildInputs = [ rospy tf tf2-ros geometry-msgs ];
  propagatedBuildInputs = [ python tf2-ros rospy tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The static_tf package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
