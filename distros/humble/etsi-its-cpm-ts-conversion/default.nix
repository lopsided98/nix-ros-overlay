
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cpm-ts-coding, etsi-its-cpm-ts-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-cpm-ts-conversion";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_cpm_ts_conversion/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "b56fef88fd3771acef3fb77cdd49b23c12cd87a07477e88ea476fca98c3bd5b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cpm-ts-coding etsi-its-cpm-ts-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS CPMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
