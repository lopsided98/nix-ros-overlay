
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-foxy-depthai";
  version = "2.20.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/foxy/depthai/2.20.2-1.tar.gz";
    name = "2.20.2-1.tar.gz";
    sha256 = "0be52d40cab357d0a5fc2a8c4e861b1df0351954f116a8eaa67da348940b510a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ libusb1 nlohmann_json opencv ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform'';
    license = with lib.licenses; [ mit ];
  };
}
