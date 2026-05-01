
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-lyrical-azure-iot-sdk-c";
  version = "1.14.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/lyrical/azure_iot_sdk_c/1.14.0-6.tar.gz";
    name = "1.14.0-6.tar.gz";
    sha256 = "c908d07c8bd6352a07f8509ca31c394a67874ed7fcf52c275db6a47045ccd71a";
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
