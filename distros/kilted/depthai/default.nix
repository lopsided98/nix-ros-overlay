
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, libtar, libusb1, nlohmann_json, opencv, ros-environment, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-kilted-depthai";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/kilted/depthai/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "93128bb2044eeb2ccf755a0b02e20e1dbef59b3eeffbb3a4bbbd63039396b001";
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
