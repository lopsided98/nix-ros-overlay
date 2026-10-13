
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cli11, cmake, cppzmq, mrpt-gui, mrpt-libros-bridge, mrpt-maps, mrpt-tfest, mrpt-topography, nav-msgs, onetbb, protobuf, python3, python3Packages, ros-environment, ros2launch, sensor-msgs, stereo-msgs, tf2, tf2-geometry-msgs, unzip, visualization-msgs, wget }:
buildRosPackage {
  pname = "ros-lyrical-mvsim";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mvsim-release/archive/release/lyrical/mvsim/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "94b5cf00a416e4f2faf367a36ac7f0f4ac67a2a6ca9dac1c91916d788e8058a1";
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
