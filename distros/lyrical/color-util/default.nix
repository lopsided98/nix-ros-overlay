
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-color-util";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_util-release/archive/release/lyrical/color_util/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "c481824e3fb1cb7084dba688bef7d05035320d17a7fec6263f7539ec1ca3afbe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An almost dependency-less library for converting between color spaces";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
