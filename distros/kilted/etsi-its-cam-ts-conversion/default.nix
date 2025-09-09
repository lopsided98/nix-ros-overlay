
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-ts-coding, etsi-its-cam-ts-msgs, etsi-its-primitives-conversion }:
buildRosPackage {
  pname = "ros-kilted-etsi-its-cam-ts-conversion";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/kilted/etsi_its_cam_ts_conversion/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "4ff8980dfc8e046f28b58f924f5aab8eeaac664c4caf22665abe26d907ad53ff";
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
