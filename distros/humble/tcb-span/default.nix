
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-humble-tcb-span";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/humble/tcb_span/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "2a506d5ed3e043fcd5e81ae931a53553c7583137cb5ca0de9fe63e3c5f85b5b1";
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
