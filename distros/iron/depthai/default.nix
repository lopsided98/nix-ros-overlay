
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-iron-depthai";
  version = "2.23.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/iron/depthai/2.23.0-1.tar.gz";
    name = "2.23.0-1.tar.gz";
    sha256 = "95a262e1c68e3150da9768270101963f3756cd52486667a1defde2652d1a9f52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ libusb1 nlohmann_json opencv opencv.cxxdev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform'';
    license = with lib.licenses; [ mit ];
  };
}
