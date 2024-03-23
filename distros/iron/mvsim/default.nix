
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, boost, cmake, cppzmq, mrpt2, nav-msgs, protobuf, python3, python3Packages, pythonPackages, ros-environment, ros2launch, sensor-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-iron-mvsim";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mvsim-release/archive/release/iron/mvsim/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "1c1f1650c414c738417f3a4a3a256fbe3989cbf09afc7a09f9f05d4c8e0c33a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost cppzmq mrpt2 nav-msgs protobuf python3 python3Packages.pip python3Packages.protobuf pythonPackages.pybind11 ros2launch sensor-msgs tf2 tf2-geometry-msgs unzip visualization-msgs wget ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = "A lightweight multivehicle simulation framework.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
