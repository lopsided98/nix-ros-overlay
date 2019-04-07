
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, op3-offset-tuner-msgs, libyamlcpp, qt4, catkin, roslib, qt-build, std-msgs, roscpp, op3-offset-tuner-server }:
buildRosPackage {
  pname = "ros-kinetic-op3-offset-tuner-client";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_offset_tuner_client/0.2.2-0.tar.gz;
    sha256 = "c20033dd184e285fc2797bfff7cbb90961c44e476dff51c909602bd4e71e4762";
  };

  buildInputs = [ libyamlcpp qt4 roslib op3-offset-tuner-msgs qt-build std-msgs roscpp ];
  propagatedBuildInputs = [ libyamlcpp qt4 op3-offset-tuner-msgs op3-offset-tuner-server std-msgs qt-build roslib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_offset_tuner_client package'';
    #license = lib.licenses.Apache 2.0;
  };
}
