
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt-build, op3-offset-tuner-msgs, qt4, std-msgs, catkin, roslib, op3-offset-tuner-server, libyamlcpp, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-op3-offset-tuner-client";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_offset_tuner_client/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "c20033dd184e285fc2797bfff7cbb90961c44e476dff51c909602bd4e71e4762";
  };

  buildType = "catkin";
  buildInputs = [ qt-build op3-offset-tuner-msgs std-msgs qt4 roslib libyamlcpp roscpp ];
  propagatedBuildInputs = [ qt-build op3-offset-tuner-msgs std-msgs qt4 roslib op3-offset-tuner-server libyamlcpp roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_offset_tuner_client package'';
    license = with lib.licenses; [ asl20 ];
  };
}
