
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-arbotix-msgs";
  version = "0.10.0-r1";

  src = fetchurl {
    url = https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/kinetic/arbotix_msgs/0.10.0-1.tar.gz;
    sha256 = "d31edaaa1ffaa298241661366f49a4971aa4ff82471f28eb4653e00a97aa06f9";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and Services definitions for the ArbotiX.'';
    #license = lib.licenses.BSD;
  };
}
