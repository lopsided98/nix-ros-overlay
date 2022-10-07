
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, boost, box2d, cmake, cppzmq, mrpt2, nav-msgs, protobuf, pythonPackages, ros-environment, ros2launch, sensor-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-mvsim";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mvsim-release/archive/release/humble/mvsim/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "8b6d676d26faa5e050ad7e0835e75c5341faea56ea4e612c84f211226a6c04e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-xmllint ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost box2d cppzmq mrpt2 nav-msgs protobuf pythonPackages.pybind11 ros2launch sensor-msgs tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = ''A lightweight multivehicle simulation framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
