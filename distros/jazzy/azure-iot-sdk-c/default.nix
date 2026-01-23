
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-jazzy-azure-iot-sdk-c";
  version = "1.14.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/jazzy/azure_iot_sdk_c/1.14.0-2.tar.gz";
    name = "1.14.0-2.tar.gz";
    sha256 = "437e43679ea774dfdbc891f6cf884e5454c00471ee8812c8aa945a4efc19b0ed";
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
