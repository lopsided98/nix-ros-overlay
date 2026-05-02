
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-rolling-azure-iot-sdk-c";
  version = "1.14.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/rolling/azure_iot_sdk_c/1.14.0-5.tar.gz";
    name = "1.14.0-5.tar.gz";
    sha256 = "d8441a637ada4522c2500a5b6be8bce4d35bece27661d59fd506c5ea3806f9d2";
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
