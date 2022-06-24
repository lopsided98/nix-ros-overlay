
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-foxy-depthai";
  version = "2.15.5-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/foxy/depthai/2.15.5-1.tar.gz";
    name = "2.15.5-1.tar.gz";
    sha256 = "687fd898f762a61c98888ca56f81ff4b4dd6cdfceb6b893aca8a01ad50b50845";
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
