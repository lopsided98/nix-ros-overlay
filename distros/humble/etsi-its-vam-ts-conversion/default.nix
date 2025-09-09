
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-primitives-conversion, etsi-its-vam-ts-coding, etsi-its-vam-ts-msgs }:
buildRosPackage {
  pname = "ros-humble-etsi-its-vam-ts-conversion";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_vam_ts_conversion/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "5b23c2b477b903d2a3508b4374f02828c6a2293d8e7aa87489787d4cfbc7617a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-primitives-conversion etsi-its-vam-ts-coding etsi-its-vam-ts-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS VAMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
