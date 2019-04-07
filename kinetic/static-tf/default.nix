
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, tf2-ros, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-static-tf";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/wu-robotics/static_tf_release/archive/release/kinetic/static_tf/0.0.2-0.tar.gz;
    sha256 = "dcf5e41d49f0d4ba06657b653c533c538660edf08072fac116c1034a097e0764";
  };

  buildInputs = [ rospy tf tf2-ros geometry-msgs ];
  propagatedBuildInputs = [ python tf2-ros rospy tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The static_tf package'';
    #license = lib.licenses.TODO;
  };
}
