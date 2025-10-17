
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-mcm-uulm-coding, etsi-its-mcm-uulm-msgs, etsi-its-primitives-conversion }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-mcm-uulm-conversion";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_mcm_uulm_conversion/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "70dc3bf6a8c2e16e445bb863151dec2532ba10635d2131f52f46d38c04c94e60";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-mcm-uulm-coding etsi-its-mcm-uulm-msgs etsi-its-primitives-conversion ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded UULM draft MCMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
