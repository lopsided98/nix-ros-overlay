
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-ts-coding, etsi-its-cam-ts-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-iron-etsi-its-cam-ts-conversion";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/iron/etsi_its_cam_ts_conversion/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "9a37aa71b02c582e213b9dedc561aed9c8455cc73d208db05ffebb44679e77b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-ts-coding etsi-its-cam-ts-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS CAMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
