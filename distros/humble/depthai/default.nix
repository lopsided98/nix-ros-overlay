
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-humble-depthai";
  version = "2.20.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/humble/depthai/2.20.2-1.tar.gz";
    name = "2.20.2-1.tar.gz";
    sha256 = "e6482e95f05da95a03898a83394c37df38cf34010d872f300d6ff544942b1444";
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
