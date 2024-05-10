
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-control-msgs";
  version = "0.8.24-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_control_msgs/0.8.24-2.tar.gz";
    name = "0.8.24-2.tar.gz";
    sha256 = "9a07609e4a24eb57e6bffebcc53101c652e6df3e2e7e1e60e84f557884725221";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Common messages and services used in various packages within cob_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
