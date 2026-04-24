
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-kilted-tcb-span";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/kilted/tcb_span/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "bc63ee119e7eae26ec33497b70c93d957c055af853bac3c5db404ffb949009be";
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
