
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-plotjuggler-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler_msgs-release/archive/release/kinetic/plotjuggler_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "439f91e69dd32c2f5d37c5788e0c31ade9b3418d6cfa8e97fde49a6770c62de6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Special Messages for PlotJuggler'';
    license = with lib.licenses; [ mit ];
  };
}
