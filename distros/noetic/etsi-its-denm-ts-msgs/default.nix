
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-denm-ts-msgs";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_denm_ts_msgs/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "848f4a9a208f2b40e8531a24817ee1f5041d8c4d9159ae64a7667d22fdc191ef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages for ETSI ITS DENM (TS)";
    license = with lib.licenses; [ mit ];
  };
}
