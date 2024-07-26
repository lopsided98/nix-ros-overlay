
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-coding, etsi-its-cam-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-cam-conversion";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_cam_conversion/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "1cd6e8956cec3b17f1a8ac8cfc32e6829eabc80a16c57da67ea620b2cc4cfb52";
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
