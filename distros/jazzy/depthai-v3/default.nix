
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, fmt, gfortran, libtar, libusb1, nlohmann_json, opencv, ros-environment, spdlog, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-jazzy-depthai-v3";
  version = "3.6.1-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-v3-release/archive/release/jazzy/depthai_v3/3.6.1-2.tar.gz";
    name = "3.6.1-2.tar.gz";
    sha256 = "8471c19b5a71b0b08c63e1f66315c8833a6d9e2ba0b678bbb3c19cd73c9b91bc";
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
