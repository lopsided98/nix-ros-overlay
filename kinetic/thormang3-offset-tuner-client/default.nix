
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt4, libyamlcpp, catkin, thormang3-offset-tuner-msgs, roslib, qt-build, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-offset-tuner-client";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/thormang3_offset_tuner_client/0.3.0-0.tar.gz;
    sha256 = "1a9d974bcbee93804bc5836e02285417a39f59fe7e247d590ec615181c5181b6";
  };

  buildInputs = [ libyamlcpp qt4 roslib qt-build std-msgs roscpp thormang3-offset-tuner-msgs ];
  propagatedBuildInputs = [ libyamlcpp qt4 roslib qt-build std-msgs roscpp thormang3-offset-tuner-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The GUI program that can adjust offset of THORMANG3.
     It is used with the thormang3_offset_tuner_server.'';
    #license = lib.licenses.Apache 2.0;
  };
}
