
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, nav-msgs, message-runtime, actionlib, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mir-actions";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_actions/1.0.3-0.tar.gz;
    sha256 = "8510a4aa0354be111f4866547a5dcc556524ec20f831ca8a8a46c1d0693741cc";
  };

  buildInputs = [ nav-msgs message-generation geometry-msgs actionlib ];
  propagatedBuildInputs = [ nav-msgs message-runtime geometry-msgs actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Action definitions for the MiR100 robot'';
    #license = lib.licenses.BSD;
  };
}
