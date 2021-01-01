
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, qt-build, qt4, roscpp, roslib, std-msgs, thormang3-offset-tuner-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-offset-tuner-client";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/thormang3_offset_tuner_client/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "1a9d974bcbee93804bc5836e02285417a39f59fe7e247d590ec615181c5181b6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libyamlcpp qt-build qt4 roscpp roslib std-msgs thormang3-offset-tuner-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The GUI program that can adjust offset of THORMANG3.
     It is used with the thormang3_offset_tuner_server.'';
    license = with lib.licenses; [ asl20 ];
  };
}
