
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-rolling-azure-iot-sdk-c";
  version = "1.14.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/rolling/azure_iot_sdk_c/1.14.0-4.tar.gz";
    name = "1.14.0-4.tar.gz";
    sha256 = "b456c00fc91533fbcb126692883a0ca84c0435675b4ce086757a35fec38b0518";
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
