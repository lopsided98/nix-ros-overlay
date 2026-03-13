
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, fmt, gfortran, libtar, libusb1, nlohmann_json, opencv, ros-environment, spdlog, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-jazzy-depthai-v3";
  version = "3.2.2-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-v3-release/archive/release/jazzy/depthai_v3/3.2.2-2.tar.gz";
    name = "3.2.2-2.tar.gz";
    sha256 = "d5aa83a0c125ea9d09b919c57b530187b2f05f1bff14c050fc05e98adf3a7373";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ curl fmt gfortran libtar libusb1 nlohmann_json opencv opencv.cxxdev spdlog udev unzip zip ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DepthAI core is a C++ library which comes with firmware and an API to interact with
        OAK Platform";
    license = with lib.licenses; [ mit ];
  };
}
