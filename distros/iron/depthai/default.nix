
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-iron-depthai";
  version = "2.26.0-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/iron/depthai/2.26.0-2.tar.gz";
    name = "2.26.0-2.tar.gz";
    sha256 = "f26c4745a93b9e231697e188e39c21f00eb887cf6561b1a03e90209e047c663d";
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
