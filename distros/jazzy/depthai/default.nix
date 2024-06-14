
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-depthai";
  version = "2.26.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/jazzy/depthai/2.26.1-1.tar.gz";
    name = "2.26.1-1.tar.gz";
    sha256 = "37b2c93808f785c66e709f7c3754c079977e71269e5f73629e8af4a0005db335";
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
