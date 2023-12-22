
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-coding, etsi-its-cam-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-cam-conversion";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_cam_conversion/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "9adbff122b2903c425f5a26fc972c2d37e89fff9aa281e6fe1ef8e6ac0a2eb67";
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
