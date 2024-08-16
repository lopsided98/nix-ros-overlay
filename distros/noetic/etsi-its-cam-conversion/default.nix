
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-coding, etsi-its-cam-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-cam-conversion";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_cam_conversion/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "f539925f567a4f6e9af3268e4d3b7e599a6846d7fdfe3b563fcb263dcd173f76";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-cam-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS CAMs";
    license = with lib.licenses; [ mit ];
  };
}
