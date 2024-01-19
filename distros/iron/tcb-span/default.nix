
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-iron-tcb-span";
  version = "1.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/iron/tcb_span/1.0.2-4.tar.gz";
    name = "1.0.2-4.tar.gz";
    sha256 = "121c38ab0edd939f04b721a4a39b986fc3873944a61c3ec150b636b616ecee96";
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
