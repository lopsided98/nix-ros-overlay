
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-teleop-twist-keyboard";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/teleop_twist_keyboard-release/archive/release/kinetic/teleop_twist_keyboard/0.6.2-0.tar.gz;
    sha256 = "7864a5d1a089ac07113e03dedb7467f5f0cada204d96866dc09c2b0ce769a070";
  };

  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for twist robots.'';
    #license = lib.licenses.BSD;
  };
}
