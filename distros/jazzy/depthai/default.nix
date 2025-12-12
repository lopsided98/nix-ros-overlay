
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-depthai";
  version = "2.31.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/jazzy/depthai/2.31.0-1.tar.gz";
    name = "2.31.0-1.tar.gz";
    sha256 = "d942a3165c13dc27cebe4d030b2e19e637c16087f215c8f6a86477c3874a8f42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ libusb1 nlohmann_json opencv opencv.cxxdev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform";
    license = with lib.licenses; [ mit ];
  };
}
