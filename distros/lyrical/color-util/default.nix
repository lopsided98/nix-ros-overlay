
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-color-util";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_util-release/archive/release/lyrical/color_util/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "9b3719f9c59cfeb7d51fe9a592b47a1590cae918e5f19f2361df39f5bf897741";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "An almost dependency-less library for converting between color spaces";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
