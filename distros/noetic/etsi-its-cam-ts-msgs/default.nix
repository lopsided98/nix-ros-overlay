
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-cam-ts-msgs";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_cam_ts_msgs/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "001314258fdb802ccac6081e5ba1fb5f85e88feb0b55e5da2238a2f1294ef5ca";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ros-environment std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages for ETSI ITS CAM (TS)";
    license = with lib.licenses; [ mit ];
  };
}
