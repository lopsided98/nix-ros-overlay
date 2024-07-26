
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-msgs, etsi-its-cpm-ts-msgs, etsi-its-denm-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "bdc7bff8a9a32320e6efc78c1b4bf300082146be2301bdccd2b4f2be06b1d98f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-cpm-ts-msgs etsi-its-denm-msgs ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
