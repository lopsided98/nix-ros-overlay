
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-depthai";
  version = "2.21.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/noetic/depthai/2.21.2-1.tar.gz";
    name = "2.21.2-1.tar.gz";
    sha256 = "def71b6966222bc7d48412e5486d7520da02e95d79c3fe968168be489525c18b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-environment ];
  propagatedBuildInputs = [ catkin libusb1 nlohmann_json opencv ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform'';
    license = with lib.licenses; [ mit ];
  };
}
