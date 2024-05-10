
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-rolling-azure-iot-sdk-c";
  version = "1.13.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/rolling/azure_iot_sdk_c/1.13.0-3.tar.gz";
    name = "1.13.0-3.tar.gz";
    sha256 = "04b780137ee18e8286c6664d5482b2987ca4c4159e2e5a3fd0a923442e099fc2";
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
