
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, fmt, gfortran, libusb1, nlohmann_json, opencv, ros-environment, spdlog, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-humble-depthai-v3";
  version = "3.10.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-v3-release/archive/release/humble/depthai_v3/3.10.0-1.tar.gz";
    name = "3.10.0-1.tar.gz";
    sha256 = "d7e0227ac76f4ac39189da95f4c4d3559a9349a36cd5684e0e3210116c846eae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ curl fmt gfortran libusb1 nlohmann_json opencv opencv.cxxdev spdlog udev unzip zip ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DepthAI core is a C++ library which comes with firmware and an API to interact with
        OAK Platform";
    license = with lib.licenses; [ mit ];
  };
}
