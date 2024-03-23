
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-cam-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_cam_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "7ca17e928b89f6596da18921d9671d7a1da1ef25c6d6085de3739ab1c0683bd6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages for ETSI ITS CAM";
    license = with lib.licenses; [ mit ];
  };
}
