
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-galactic-depthai";
  version = "2.15.5-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/galactic/depthai/2.15.5-1.tar.gz";
    name = "2.15.5-1.tar.gz";
    sha256 = "4986156602eab268b763908b1c26d67e4404f43476a61a026ddd6c6b95b901fe";
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
