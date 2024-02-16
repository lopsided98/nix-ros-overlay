
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, curl, openssl, util-linux }:
buildRosPackage {
  pname = "ros-iron-azure-iot-sdk-c";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/iron/azure-iot-sdk-c/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "b35017fcc97c8020d789900557eef5137903e94ced3c3b6c037750b9242cf736";
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
