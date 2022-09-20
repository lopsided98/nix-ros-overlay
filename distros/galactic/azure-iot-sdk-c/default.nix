
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-galactic-azure-iot-sdk-c";
  version = "1.9.0-r2";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/galactic/azure-iot-sdk-c/1.9.0-2.tar.gz";
    name = "1.9.0-2.tar.gz";
    sha256 = "8340f978e6f13e64b2b4221eddc7690a630be7b514f9c4527d55ba8586aca475";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ curl openssl util-linux ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Azure IoT C SDKs and Libraries'';
    license = with lib.licenses; [ mit ];
  };
}
