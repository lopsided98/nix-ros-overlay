
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, op3-offset-tuner-msgs, libyamlcpp, qt4, catkin, roslib, qt-build, std-msgs, roscpp, op3-offset-tuner-server }:
buildRosPackage {
  pname = "ros-kinetic-op3-offset-tuner-client";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_offset_tuner_client/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "c20033dd184e285fc2797bfff7cbb90961c44e476dff51c909602bd4e71e4762";
  };

  buildType = "catkin";
  buildInputs = [ op3-offset-tuner-msgs qt4 libyamlcpp roslib qt-build std-msgs roscpp ];
  propagatedBuildInputs = [ op3-offset-tuner-msgs qt4 libyamlcpp qt-build roscpp op3-offset-tuner-server std-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_offset_tuner_client package'';
    license = with lib.licenses; [ asl20 ];
  };
}
