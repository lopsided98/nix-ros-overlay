
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gencpp, gennodejs, genlisp, catkin, geneus, genmsg, genpy }:
buildRosPackage {
  pname = "ros-melodic-message-generation";
  version = "0.4.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/message_generation-release/archive/release/melodic/message_generation/0.4.0-0.tar.gz;
    sha256 = "e868cdae2dcb54701e86484cb186fad8814bbd295db8a0224c4c14c3651d9303";
  };

  propagatedBuildInputs = [ gencpp gennodejs geneus genmsg genpy genlisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package modeling the build-time dependencies for generating language bindings of messages.'';
    #license = lib.licenses.BSD;
  };
}
