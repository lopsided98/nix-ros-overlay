
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-jazzy-azure-iot-sdk-c";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/azure_iot_sdk_c-release/archive/release/jazzy/azure_iot_sdk_c/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "10edb55ea60191e09279b20b389d45fc4e3922ee8856a6fae62cbedb3c6c16dd";
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
