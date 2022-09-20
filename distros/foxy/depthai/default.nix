
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-foxy-depthai";
  version = "2.17.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/foxy/depthai/2.17.3-1.tar.gz";
    name = "2.17.3-1.tar.gz";
    sha256 = "42d41421eef43b646bb5e924a63e8438ae44c79d5452965501b19c7c4d0f06f4";
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
