
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-plotjuggler-msgs";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler_msgs-release/archive/release/noetic/plotjuggler_msgs/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "2af067089b7ea6584191410dd4bf8eda374b2d67fbc75f57e42b7581ff4928b9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Special Messages for PlotJuggler'';
    license = with lib.licenses; [ mit ];
  };
}
