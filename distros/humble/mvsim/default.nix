
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, boost, box2d, cmake, cppzmq, mrpt2, nav-msgs, protobuf, python3, python3Packages, pythonPackages, ros-environment, ros2launch, sensor-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-humble-mvsim";
  version = "0.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mvsim-release/archive/release/humble/mvsim/0.5.1-2.tar.gz";
    name = "0.5.1-2.tar.gz";
    sha256 = "43ae6084a104e16d5bca25c723dff2640d5fa6977aac327bba9452875c512c3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost box2d cppzmq mrpt2 nav-msgs protobuf python3 python3Packages.protobuf pythonPackages.pybind11 ros2launch sensor-msgs tf2 tf2-geometry-msgs unzip visualization-msgs wget ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = ''A lightweight multivehicle simulation framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
