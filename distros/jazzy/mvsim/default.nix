
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cli11, cmake, cppzmq, mrpt-gui, mrpt-libros-bridge, mrpt-maps, mrpt-tfest, mrpt-topography, nav-msgs, onetbb, protobuf, python3, python3Packages, ros-environment, ros2launch, sensor-msgs, stereo-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-jazzy-mvsim";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mvsim-release/archive/release/jazzy/mvsim/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "dc5b4e4df2a8568db25445c34a05f4416742aec1396ca4c6b1c2e881ca56d32c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cli11 cppzmq mrpt-gui mrpt-libros-bridge mrpt-maps mrpt-tfest mrpt-topography nav-msgs onetbb protobuf python3 python3Packages.pip python3Packages.protobuf python3Packages.pybind11 ros2launch sensor-msgs stereo-msgs tf2 tf2-geometry-msgs unzip visualization-msgs wget ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = "A lightweight multivehicle simulation framework.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
