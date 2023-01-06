
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, boost, box2d, cmake, cppzmq, mrpt2, nav-msgs, protobuf, python3, pythonPackages, ros-environment, ros2launch, sensor-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-mvsim";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mvsim-release/archive/release/foxy/mvsim/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "1840a35cd4dc24f7b359929826883df6e36ad5eb5f456029cec233cd377f249d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost box2d cppzmq mrpt2 nav-msgs protobuf python3 pythonPackages.pybind11 ros2launch sensor-msgs tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = ''A lightweight multivehicle simulation framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
