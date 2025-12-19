
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, qt6, resource-retriever, rviz-rendering }:
buildRosPackage {
  pname = "ros-rolling-rviz-rendering-tests";
  version = "15.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_rendering_tests/15.1.14-1.tar.gz";
    name = "15.1.14-1.tar.gz";
    sha256 = "662e97d4e903bc524f58b3180c4b08ca7a2e0359a86ddd334d2920c9b87e4794";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt6.qtbase ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ resource-retriever rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example plugin for RViz - documents and tests RViz plugin development";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
