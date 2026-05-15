
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, fmt, gfortran, libtar, libusb1, nlohmann_json, opencv, ros-environment, spdlog, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-humble-depthai-v3";
  version = "3.6.1-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-v3-release/archive/release/humble/depthai_v3/3.6.1-2.tar.gz";
    name = "3.6.1-2.tar.gz";
    sha256 = "a1b4304d1facd92c1b09fcf6ff29e25b23d0e89bd75db68145018643f42f6373";
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
