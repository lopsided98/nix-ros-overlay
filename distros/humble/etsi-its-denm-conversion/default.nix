
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-denm-coding, etsi-its-denm-msgs, etsi-its-primitives-conversion }:
buildRosPackage {
  pname = "ros-humble-etsi-its-denm-conversion";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_denm_conversion/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "f91115781ddb6e0a03e61c89e484f95edfc2f4ce3f381c56dd9217e370a42d77";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-denm-coding etsi-its-denm-msgs etsi-its-primitives-conversion ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS DENMs";
    license = with lib.licenses; [ mit ];
  };
}
