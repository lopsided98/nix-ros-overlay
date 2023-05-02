
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-humble-depthai";
  version = "2.21.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/humble/depthai/2.21.2-1.tar.gz";
    name = "2.21.2-1.tar.gz";
    sha256 = "ce54a47f2c1368566c091aa3b57dc1f954f380b7b611eb6788245e7a5ca7a20a";
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
