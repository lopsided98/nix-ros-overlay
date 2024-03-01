
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-msgs, etsi-its-denm-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "c19e4d2cf3b19f24bf89c4c06e5a5c7589e4a498927877231e689db59963cba4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-denm-msgs ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
