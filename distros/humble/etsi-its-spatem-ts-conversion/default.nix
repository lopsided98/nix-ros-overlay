
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-primitives-conversion, etsi-its-spatem-ts-coding, etsi-its-spatem-ts-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-spatem-ts-conversion";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_spatem_ts_conversion/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "e22050466289badc1f644cccba1fa6ab1584b8254bcd1f3d5e23c0bd85485fef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-primitives-conversion etsi-its-spatem-ts-coding etsi-its-spatem-ts-msgs ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS SPATEMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
