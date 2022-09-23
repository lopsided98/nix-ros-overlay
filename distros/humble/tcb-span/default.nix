
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-humble-tcb-span";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/cpp_polyfills-release/archive/release/humble/tcb_span/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "15f23cb993d7248a975eb7fb8a8ac07895ecf541e2b116adb5ceccdd10b56be6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Implementation of C++20's std::span'';
    license = with lib.licenses; [ "BSL-1.0" ];
  };
}
