
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-galactic-depthai";
  version = "2.17.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/galactic/depthai/2.17.3-1.tar.gz";
    name = "2.17.3-1.tar.gz";
    sha256 = "4139e0955cf07dd92f115bfa141c1ff0080d263c059c0ec1a6fddc62cd666a1e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ libusb1 nlohmann_json opencv ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform'';
    license = with lib.licenses; [ mit ];
  };
}
