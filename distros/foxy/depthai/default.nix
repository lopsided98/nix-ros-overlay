
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv }:
buildRosPackage {
  pname = "ros-foxy-depthai";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/foxy/depthai/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "88d84cdcc15e90cf05e45bfb7ef6336a13609f98bc006681c237219bbf5f515c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libusb1 nlohmann_json opencv ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform'';
    license = with lib.licenses; [ mit ];
  };
}
