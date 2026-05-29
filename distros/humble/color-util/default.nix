
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, std-msgs }:
buildRosPackage {
  pname = "ros-humble-color-util";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_util-release/archive/release/humble/color_util/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "52c587fa81c013e5fa684fd585474d677640134720fa99eb3216981749366995";
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
