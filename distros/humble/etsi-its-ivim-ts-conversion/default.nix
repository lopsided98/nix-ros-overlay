
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-ivim-ts-coding, etsi-its-ivim-ts-msgs, etsi-its-primitives-conversion }:
buildRosPackage {
  pname = "ros-humble-etsi-its-ivim-ts-conversion";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_ivim_ts_conversion/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "d38ae95a22bc14620728b23ab66f5bec979067941b4ed060e6d1206749aa6b0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-ivim-ts-coding etsi-its-ivim-ts-msgs etsi-its-primitives-conversion ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS IVIMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
