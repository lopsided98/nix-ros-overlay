
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-yasmin";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "f812babb9769755b3013143834ca9e4c090aece6e14832cc9a209838c5358759";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest python3Packages.pytest python3Packages.pytestcov ];
  propagatedBuildInputs = [ python3 python3Packages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN (Yet Another State MachINe) main package";
    license = with lib.licenses; [ asl20 ];
  };
}
