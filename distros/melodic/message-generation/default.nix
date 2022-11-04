
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gencpp, geneus, genlisp, genmsg, gennodejs, genpy }:
buildRosPackage {
  pname = "ros-melodic-message-generation";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/message_generation-release/archive/release/melodic/message_generation/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "d531e1cccea1c27ddb4de2633c5a9a14c9a6f3256dc8ea3a7e3524e543091323";
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
