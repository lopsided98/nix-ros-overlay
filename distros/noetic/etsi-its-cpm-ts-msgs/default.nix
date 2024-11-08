
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-cpm-ts-msgs";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_cpm_ts_msgs/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "52eb223eb49457bf7f9a2369a8d4227d72cccda5553d1d27cfae54656fc2b506";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages for ETSI ITS CPM (TS)";
    license = with lib.licenses; [ mit ];
  };
}
