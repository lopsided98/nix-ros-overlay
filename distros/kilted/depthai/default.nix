
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, libtar, libusb1, nlohmann_json, opencv, ros-environment, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-kilted-depthai";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/kilted/depthai/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "57d929065b67895159811b694ea9c43f66cfd1366de6472ca08813b59e4d5318";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ curl libtar libusb1 nlohmann_json opencv opencv.cxxdev udev unzip zip ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DepthAI core is a C++ library which comes with firmware and an API to interact with
        OAK Platform";
    license = with lib.licenses; [ mit ];
  };
}
