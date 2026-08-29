
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, fmt, gfortran, libusb1, nlohmann_json, opencv, ros-environment, spdlog, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-lyrical-depthai";
  version = "3.9.0-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/lyrical/depthai/3.9.0-2.tar.gz";
    name = "3.9.0-2.tar.gz";
    sha256 = "11808bb681c5260bb8f0782894b31e77800936bf5e90bfb7a86abdf64725c60f";
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
