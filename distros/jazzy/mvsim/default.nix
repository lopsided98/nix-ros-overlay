
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, boost, cmake, cppzmq, mrpt-libgui, mrpt-libmaps, mrpt-libposes, mrpt-libros-bridge, mrpt-libtclap, nav-msgs, protobuf, python3, python3Packages, ros-environment, ros2launch, sensor-msgs, stereo-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-jazzy-mvsim";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mvsim-release/archive/release/jazzy/mvsim/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "cb0eaeb61644ee9a70bbeb92501fd28afef062fa25cd71f2560d1918dc6eb07a";
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
