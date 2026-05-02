
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, libGL, libGLU, nlohmann_json, qml6-ros2-plugin, qt6, ros-babel-fish-test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rqml-core";
  version = "3.26.42-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/rolling/rqml_core/3.26.42-2.tar.gz";
    name = "3.26.42-2.tar.gz";
    sha256 = "d681b3279677d390313d22fa1ed1f7d7d54b019838e20d2aee601e3ea16a7294";
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
