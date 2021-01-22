
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python, rospy, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-static-tf";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/wu-robotics/static_tf_release/archive/release/kinetic/static_tf/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "dcf5e41d49f0d4ba06657b653c533c538660edf08072fac116c1034a097e0764";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs python rospy tf tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The static_tf package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
