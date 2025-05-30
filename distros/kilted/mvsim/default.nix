
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, boost, cmake, cppzmq, mrpt-libgui, mrpt-libmaps, mrpt-libposes, mrpt-libros-bridge, mrpt-libtclap, nav-msgs, protobuf, python3, python3Packages, ros-environment, ros2launch, sensor-msgs, stereo-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-kilted-mvsim";
  version = "0.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mvsim-release/archive/release/kilted/mvsim/0.13.2-2.tar.gz";
    name = "0.13.2-2.tar.gz";
    sha256 = "6d54d07734513340c0ab5e0caf552db033f61c11fb580e45fd0563cbcfd00d67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost cppzmq mrpt-libgui mrpt-libmaps mrpt-libposes mrpt-libros-bridge mrpt-libtclap nav-msgs protobuf python3 python3Packages.pip python3Packages.protobuf python3Packages.pybind11 ros2launch sensor-msgs stereo-msgs tf2 tf2-geometry-msgs unzip visualization-msgs wget ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = "A lightweight multivehicle simulation framework.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
