
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-iron-depthai";
  version = "2.26.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/iron/depthai/2.26.1-1.tar.gz";
    name = "2.26.1-1.tar.gz";
    sha256 = "81ac98ae57a258c5d15560552be12b90ecfeddc3179c5d88a61f1d550effff89";
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
