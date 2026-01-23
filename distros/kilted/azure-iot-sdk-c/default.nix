
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-kilted-azure-iot-sdk-c";
  version = "1.14.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/kilted/azure_iot_sdk_c/1.14.0-3.tar.gz";
    name = "1.14.0-3.tar.gz";
    sha256 = "cf81de05fba11e322f118453ba34b048f07fe9aa61f8951b0d7b5ce59a4342a7";
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
