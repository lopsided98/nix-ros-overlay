
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-galactic-depthai";
  version = "2.17.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/galactic/depthai/2.17.4-1.tar.gz";
    name = "2.17.4-1.tar.gz";
    sha256 = "aa46ec1f12cb1ee892f3be40bb5982bd50121af0e9acabd87475e73ae0e8171d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ libusb1 nlohmann_json opencv ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform'';
    license = with lib.licenses; [ mit ];
  };
}
