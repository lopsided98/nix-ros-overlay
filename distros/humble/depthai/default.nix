
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, nlohmann_json, opencv, ros-environment }:
buildRosPackage {
  pname = "ros-humble-depthai";
  version = "2.17.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-core-release/archive/release/humble/depthai/2.17.4-1.tar.gz";
    name = "2.17.4-1.tar.gz";
    sha256 = "d2ca1f9f4c8454e5f837e195db7674d550ef09077848bd156b46a1e6d1514285";
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
