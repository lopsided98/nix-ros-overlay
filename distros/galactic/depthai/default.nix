
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv }:
buildRosPackage {
  pname = "ros-galactic-depthai";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/galactic/depthai/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "59d1a880410829ea6df58495a578aecf7341fe4a6ab2108ad64fc9461d2025f5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libusb1 nlohmann_json opencv ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform'';
    license = with lib.licenses; [ mit ];
  };
}
