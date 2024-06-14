
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-depthai";
  version = "2.26.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/noetic/depthai/2.26.1-1.tar.gz";
    name = "2.26.1-1.tar.gz";
    sha256 = "8ed8be4623d3ace6f9b20406a5517d2c520199ad0201a419534efe7093388fef";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-environment ];
  propagatedBuildInputs = [ catkin libusb1 nlohmann_json opencv opencv.cxxdev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "DepthAI core is a C++ library which comes with firmware and an API to interact with OAK Platform";
    license = with lib.licenses; [ mit ];
  };
}
