
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-variant-msgs";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/melodic/variant_msgs/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "ae614a42d4d601049053d44911ab4ed4d97deaa47e2ea608f05b7826a450b5ac";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Variant messages are designed to accommodate the information content of any invariant message. They are truly generic and can freely be converted to and from specific message objects.'';
    license = with lib.licenses; [ "GNU-Lesser-General-Public-License-LGPL-" ];
  };
}
