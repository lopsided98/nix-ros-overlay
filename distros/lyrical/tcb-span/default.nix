
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-lyrical-tcb-span";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/lyrical/tcb_span/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "0468cb21fcb0192757f96818ec7cb57b72373dd601b79fdda74f58a2d85c7f88";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Implementation of C++20's std::span";
    license = with lib.licenses; [ "BSL-1.0" ];
  };
}
