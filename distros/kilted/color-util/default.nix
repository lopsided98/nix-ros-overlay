
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-color-util";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_util-release/archive/release/kilted/color_util/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d863faa2b7d01da0421fcc71f8b65a06eeb688f6f4d5a5d57b42ce1358c9f228";
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
