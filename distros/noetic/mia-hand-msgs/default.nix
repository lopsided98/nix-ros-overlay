
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-msgs";
  version = "1.0.0-r13";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_msgs/1.0.0-13.tar.gz";
    name = "1.0.0-13.tar.gz";
    sha256 = "79bbde4295d3ab46307fabc372618919142f7ab82ee17de8b9f04340c5a8d6d1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing Mia Hand msg and srv files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
