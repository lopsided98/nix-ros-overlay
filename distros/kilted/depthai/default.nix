
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, fmt, gfortran, libusb1, nlohmann_json, opencv, ros-environment, spdlog, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-kilted-depthai";
  version = "3.12.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/kilted/depthai/3.12.0-1.tar.gz";
    name = "3.12.0-1.tar.gz";
    sha256 = "6019824d947ab846c41243ac5f729ffb687e168813ac0b228728b50cb9e7e28f";
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
