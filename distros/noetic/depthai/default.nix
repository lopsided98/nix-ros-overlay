
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-depthai";
  version = "2.20.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/noetic/depthai/2.20.2-1.tar.gz";
    name = "2.20.2-1.tar.gz";
    sha256 = "bb565978a29a525387915fa4bd75001b28e556ef052716035040d6eff050161d";
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
