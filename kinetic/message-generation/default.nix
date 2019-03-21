
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gencpp, gennodejs, genlisp, catkin, geneus, genmsg, genpy }:
buildRosPackage {
  pname = "ros-kinetic-message-generation";
  version = "0.4.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/message_generation-release/archive/release/kinetic/message_generation/0.4.0-0.tar.gz;
    sha256 = "ac76ca0d20dd18e43aa4a13cf7669a3a0849456d57636738d38110f7b321e463";
  };

  propagatedBuildInputs = [ gencpp gennodejs geneus genmsg genpy genlisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package modeling the build-time dependencies for generating language bindings of messages.'';
    #license = lib.licenses.BSD;
  };
}
