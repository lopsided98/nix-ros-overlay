
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, libGL, libGLU, nlohmann_json, qml6-ros2-plugin, qt6, ros-babel-fish-test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-rqml-core";
  version = "3.26.42-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/kilted/rqml_core/3.26.42-1.tar.gz";
    name = "3.26.42-1.tar.gz";
    sha256 = "5080bf3ad9f11c207a5ed354d05ce2b5d95a5ccac518f146861e929bb4a344b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake libGL libGLU nlohmann_json ];
  checkInputs = [ ament-lint-auto ros-babel-fish-test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp qml6-ros2-plugin qt6.qtbase qt6.qtdeclarative yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "QML-based robotics visualization and control tool for ROS 2.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
