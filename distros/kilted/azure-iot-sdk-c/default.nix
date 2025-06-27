
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-kilted-azure-iot-sdk-c";
  version = "1.14.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/kilted/azure_iot_sdk_c/1.14.0-2.tar.gz";
    name = "1.14.0-2.tar.gz";
    sha256 = "5be0e1f56be7f82712f3bc674b564d6aa2c257221f1d99aab7fae299fb00f534";
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
