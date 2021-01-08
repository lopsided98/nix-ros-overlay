
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gencpp, geneus, genlisp, genmsg, gennodejs, genpy }:
buildRosPackage {
  pname = "ros-kinetic-message-generation";
  version = "0.4.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/message_generation-release/archive/release/kinetic/message_generation/0.4.0-0.tar.gz";
    name = "0.4.0-0.tar.gz";
    sha256 = "ac76ca0d20dd18e43aa4a13cf7669a3a0849456d57636738d38110f7b321e463";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gencpp geneus genlisp genmsg gennodejs genpy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package modeling the build-time dependencies for generating language bindings of messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
