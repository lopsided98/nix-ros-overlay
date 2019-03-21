
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, nav-msgs, message-runtime, actionlib, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mir-actions";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_actions/1.0.3-0.tar.gz;
    sha256 = "1e75e30bab40885a2ecaa62061fb97720b262c4886516b1083fea8400acbcd0c";
  };

  propagatedBuildInputs = [ nav-msgs message-runtime geometry-msgs actionlib ];
  nativeBuildInputs = [ nav-msgs message-generation actionlib catkin geometry-msgs ];

  meta = {
    description = ''Action definitions for the MiR100 robot'';
    #license = lib.licenses.BSD;
  };
}
