
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-humble-tcb-span";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/generate_parameter_library-release/archive/release/humble/tcb_span/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "0158977df984d0b3ed6fb873178994545393550fe9127d5ac927d0cb9bef6202";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Implementation of C++20's std::span'';
    license = with lib.licenses; [ "BSL-1.0" ];
  };
}
