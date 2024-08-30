
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-iron-azure-iot-sdk-c";
  version = "1.14.0-r2";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/iron/azure-iot-sdk-c/1.14.0-2.tar.gz";
    name = "1.14.0-2.tar.gz";
    sha256 = "780b8d7d7c09d508ce9b8a1a166b6d3573acb119a31865562861385b35a7c01b";
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
