
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-rolling-azure-iot-sdk-c";
  version = "1.14.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/rolling/azure_iot_sdk_c/1.14.0-3.tar.gz";
    name = "1.14.0-3.tar.gz";
    sha256 = "d7607fd29e49f69de7033fef64d3d101c81b30860e60a8416d9e55d482e9a7f3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ curl openssl util-linux ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Azure IoT C SDKs and Libraries";
    license = with lib.licenses; [ mit ];
  };
}
