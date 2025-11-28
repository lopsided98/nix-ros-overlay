
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-humble-yasmin";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "6a7f0a199fdfd9247a2aea61d6d4388fe6002ddbdb7e7d35f35c1367b5a40ff8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3Packages.pybind11 ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-copyright ament-flake8 ament-pep257 python3Packages.pytest python3Packages.pytestcov ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python3Packages.pybind11 ];

  meta = {
    description = "YASMIN (Yet Another State MachINe) main package";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
