
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-msgs, etsi-its-cam-ts-msgs, etsi-its-cpm-ts-msgs, etsi-its-denm-msgs, etsi-its-denm-ts-msgs, etsi-its-mapem-ts-msgs, etsi-its-spatem-ts-msgs, etsi-its-vam-ts-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "2cfc933c4a6c9880ec4a5c6e0ad741bf3e59ce76d6e72adf78fc7b11ee2b3aa9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-cam-ts-msgs etsi-its-cpm-ts-msgs etsi-its-denm-msgs etsi-its-denm-ts-msgs etsi-its-mapem-ts-msgs etsi-its-spatem-ts-msgs etsi-its-vam-ts-msgs ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
