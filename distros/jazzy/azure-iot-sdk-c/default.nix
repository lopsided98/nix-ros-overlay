
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-jazzy-azure-iot-sdk-c";
  version = "1.13.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/jazzy/azure_iot_sdk_c/1.13.0-2.tar.gz";
    name = "1.13.0-2.tar.gz";
    sha256 = "61bd420b5b0962a2abe09200876607d6489c321199ce41c05e1211437a48ebf3";
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
