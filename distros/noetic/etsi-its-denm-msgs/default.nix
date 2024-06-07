
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-denm-msgs";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_denm_msgs/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "1f072da8f67b5a7ebe8c302bc2b62398aa752fd87b99443e96941641b32d927d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages for ETSI ITS DENM";
    license = with lib.licenses; [ mit ];
  };
}
