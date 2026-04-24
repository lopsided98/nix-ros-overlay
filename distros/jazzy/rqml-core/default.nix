
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, libGL, libGLU, nlohmann_json, qml6-ros2-plugin, qt6, ros-babel-fish-test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-rqml-core";
  version = "3.26.41-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/jazzy/rqml_core/3.26.41-1.tar.gz";
    name = "3.26.41-1.tar.gz";
    sha256 = "61d79c6c64738d8a25e09b16362544a9037aa2c9eb344e7f7c7599549220e662";
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
