
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-foxy-depthai";
  version = "2.17.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/foxy/depthai/2.17.4-1.tar.gz";
    name = "2.17.4-1.tar.gz";
    sha256 = "46f21f8cf3ee34cdbf33d245eddea1aa305e84840d08d5adcf4db9dcd78a8d0f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ libusb1 nlohmann_json opencv ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform'';
    license = with lib.licenses; [ mit ];
  };
}
