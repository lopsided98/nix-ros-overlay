
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gencpp, gennodejs, genlisp, catkin, geneus, genmsg, genpy }:
buildRosPackage {
  pname = "ros-lunar-message-generation";
  version = "0.4.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/message_generation-release/archive/release/lunar/message_generation/0.4.0-0.tar.gz;
    sha256 = "10df5531fc4b958275f5141df99394c9e4532c7a72d9ace70c9283465304dcf8";
  };

  propagatedBuildInputs = [ gencpp gennodejs geneus genmsg genpy genlisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package modeling the build-time dependencies for generating language bindings of messages.'';
    #license = lib.licenses.BSD;
  };
}
