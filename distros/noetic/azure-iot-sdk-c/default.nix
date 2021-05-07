
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, curl, utillinux }:
buildRosPackage {
  pname = "ros-noetic-azure-iot-sdk-c";
  version = "1.7.0-r3";

  src = fetchurl {
    url = "https://github.com/nobleo/azure-iot-sdk-c-release/archive/release/noetic/azure-iot-sdk-c/1.7.0-3.tar.gz";
    name = "1.7.0-3.tar.gz";
    sha256 = "f3f2075567737c0e23e919dfc043654d8bf3fb2125cc90ba83c06545f4e70bf7";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin curl utillinux ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Azure IoT C SDKs and Libraries'';
    license = with lib.licenses; [ mit ];
  };
}
