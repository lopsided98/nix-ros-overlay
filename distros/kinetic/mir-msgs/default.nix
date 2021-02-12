
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-mir-msgs";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_msgs/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "c76ef153a3259c94bbcdb8791b642eb5432806f4bb75ced0e5396336d448b76d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
