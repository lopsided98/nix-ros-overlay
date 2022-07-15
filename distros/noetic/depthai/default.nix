
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-depthai";
  version = "2.17.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/noetic/depthai/2.17.0-1.tar.gz";
    name = "2.17.0-1.tar.gz";
    sha256 = "0a8689e29b8f036540f2b10fdd45c840d119cbac80c99cc29d71677ef90700f7";
  };

  buildType = "cmake";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ catkin libusb1 nlohmann_json opencv ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform'';
    license = with lib.licenses; [ mit ];
  };
}
