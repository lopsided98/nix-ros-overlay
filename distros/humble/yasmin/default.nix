
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, python3, python3Packages }:
buildRosPackage {
  pname = "ros-humble-yasmin";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "c40a45f16fd00ec4d50adf7df37073bf2f7f08095dd7b6764d6c20399a2262ba";
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
