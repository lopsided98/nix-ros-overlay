
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, fmt, gfortran, libusb1, nlohmann_json, opencv, ros-environment, spdlog, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-jazzy-depthai-v3";
  version = "3.11.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-v3-release/archive/release/jazzy/depthai_v3/3.11.0-1.tar.gz";
    name = "3.11.0-1.tar.gz";
    sha256 = "60d471163820fa3e6a03d54498d1040fe6f51dcddd2d688eb9df80f44d2bd782";
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
