
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, gfortran, libtar, libusb1, nlohmann_json, opencv, ros-environment, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-kilted-depthai";
  version = "3.0.6-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/kilted/depthai/3.0.6-1.tar.gz";
    name = "3.0.6-1.tar.gz";
    sha256 = "77617905aab8e25cee22145d67f1bc04bd4c14629e68bff31e1cce4110ed8b87";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ curl gfortran libtar libusb1 nlohmann_json opencv opencv.cxxdev udev unzip zip ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DepthAI core is a C++ library which comes with firmware and an API to interact with
        OAK Platform";
    license = with lib.licenses; [ mit ];
  };
}
