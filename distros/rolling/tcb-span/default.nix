
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-rolling-tcb-span";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/rolling/tcb_span/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "4ec050e559d9640b820dc5e4acb72f562337ac83f14657c4d8017540a19200e9";
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
