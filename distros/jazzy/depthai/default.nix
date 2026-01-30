
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-depthai";
  version = "2.31.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/jazzy/depthai/2.31.1-1.tar.gz";
    name = "2.31.1-1.tar.gz";
    sha256 = "03e8a53adb807eec82c23f7318aa60b0604f9c9eef8b82847fe7c8c83595410e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ libusb1 nlohmann_json opencv opencv.cxxdev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform";
    license = with lib.licenses; [ mit ];
  };
}
