
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, fmt, gfortran, libtar, libusb1, nlohmann_json, opencv, ros-environment, spdlog, udev, unzip, zip }:
buildRosPackage {
  pname = "ros-humble-depthai-v3";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-v3-release/archive/release/humble/depthai_v3/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "b18651a56e507051257bef770e875b9dcf18697d865a585e806e2f1f11461f51";
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
