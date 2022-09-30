
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-depthai";
  version = "2.17.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/noetic/depthai/2.17.4-1.tar.gz";
    name = "2.17.4-1.tar.gz";
    sha256 = "249891ccaadf2e32a68f5451c762d4762f8b13a11b0d98e70f98c5ecc30240e8";
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
