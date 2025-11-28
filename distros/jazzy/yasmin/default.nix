
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-yasmin";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "9882302d63a12d4746f1454011cf50c540daf0a3347e4cf1b97e1bc7eb4f87d5";
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
