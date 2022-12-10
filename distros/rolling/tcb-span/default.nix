
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-rolling-tcb-span";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/cpp_polyfills-release/archive/release/rolling/tcb_span/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "a3b5dc73bf67232ba81e762ab2a20e323da48b4ceb75666df1970d5962bf4c64";
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
