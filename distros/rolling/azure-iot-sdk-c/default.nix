
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-rolling-azure-iot-sdk-c";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/rolling/azure_iot_sdk_c/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "8087467f162b6e304854d36f2455a76369057f00dd101badd5815250769be66a";
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
