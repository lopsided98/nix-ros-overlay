
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv }:
buildRosPackage {
  pname = "ros-galactic-depthai";
  version = "2.15.4-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/galactic/depthai/2.15.4-2.tar.gz";
    name = "2.15.4-2.tar.gz";
    sha256 = "556938d97b747462ec3a797080f9b5eae8d3fc5ff9132a55e7ddd0816d778848";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libusb1 nlohmann_json opencv ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform'';
    license = with lib.licenses; [ mit ];
  };
}
