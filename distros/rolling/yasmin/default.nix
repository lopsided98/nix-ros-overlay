
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-yasmin";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "a54abf218e19775d735d8645d788302c85b15553f24e562aea9c8128f290aa74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest python3Packages.pytest python3Packages.pytestcov ];
  propagatedBuildInputs = [ python3 python3Packages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN (Yet Another State MachINe) main package";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
