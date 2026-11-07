
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, fmt, gfortran, libusb1, nlohmann_json, opencv, ros-environment, spdlog, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-humble-depthai-v3";
  version = "3.12.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-v3-release/archive/release/humble/depthai_v3/3.12.0-1.tar.gz";
    name = "3.12.0-1.tar.gz";
    sha256 = "ca7ff53c0feb32b9a3eaa6e75ef1600580cd2fb745e7dca5fec8c3f965fc9cf0";
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
