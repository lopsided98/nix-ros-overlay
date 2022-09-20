
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-depthai";
  version = "2.17.3-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/noetic/depthai/2.17.3-2.tar.gz";
    name = "2.17.3-2.tar.gz";
    sha256 = "abc55619ae8daed9c52fb41fd410beab97b3168238a8c8ebdb575a7d6e83512f";
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
