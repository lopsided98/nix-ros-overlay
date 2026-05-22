
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, qt6, resource-retriever, rviz-rendering }:
buildRosPackage {
  pname = "ros-lyrical-rviz-rendering-tests";
  version = "15.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/lyrical/rviz_rendering_tests/15.2.3-1.tar.gz";
    name = "15.2.3-1.tar.gz";
    sha256 = "20425dbb923478fd788ee133359d60c224fb509ff5a960a3e4c539b6c1a2695e";
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
