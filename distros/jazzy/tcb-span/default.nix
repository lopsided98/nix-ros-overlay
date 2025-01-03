
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-jazzy-tcb-span";
  version = "1.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/jazzy/tcb_span/1.0.2-5.tar.gz";
    name = "1.0.2-5.tar.gz";
    sha256 = "a8ad59841a27e25761f00a67a33ebf5dcd472d8258ccbe55b55dfcac6c4d9d66";
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
