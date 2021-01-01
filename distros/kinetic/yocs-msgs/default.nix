
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-msgs";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yocs_msgs-release/archive/release/kinetic/yocs_msgs/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "d3107b489efdf0cbd26b5bb92e6a69a50d20581d4f313a5ad5d2253a0e379f99";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Yujin's Open Control System messages, services and actions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
