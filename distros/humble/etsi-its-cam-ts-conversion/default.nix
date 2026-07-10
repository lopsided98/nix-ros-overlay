
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-ts-coding, etsi-its-cam-ts-msgs, etsi-its-primitives-conversion }:
buildRosPackage {
  pname = "ros-humble-etsi-its-cam-ts-conversion";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_cam_ts_conversion/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "049230930c1c9545fbaf8993f270265027a95b86b5c6ce3976d7fb35ea842fee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-ts-coding etsi-its-cam-ts-msgs etsi-its-primitives-conversion ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS CAMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
