
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gencpp, geneus, genlisp, genmsg, gennodejs, genpy }:
buildRosPackage {
  pname = "ros-noetic-message-generation";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/message_generation-release/archive/release/noetic/message_generation/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "5733a6180d2cd104c5cbbbcd1f20eb11b0edeb6a6253ccdcb300f550264dbde0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gencpp geneus genlisp genmsg gennodejs genpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package modeling the build-time dependencies for generating language bindings of messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
