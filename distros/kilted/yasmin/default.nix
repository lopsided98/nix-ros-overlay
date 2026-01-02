
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, python3, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-yasmin";
  version = "4.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin/4.2.2-1.tar.gz";
    name = "4.2.2-1.tar.gz";
    sha256 = "372ce5e54845eaf0a9f27f2cf052bfa646461e7f3d8aa73cf261d6dcdbb6baf5";
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
