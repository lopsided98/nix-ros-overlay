
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-coding, etsi-its-cam-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-cam-conversion";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_cam_conversion/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "84fa7ce461af8c7d7334659f89c1ce89c1c476c194ebe0d3764c7a0febe72399";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-cam-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS CAMs'';
    license = with lib.licenses; [ mit ];
  };
}
