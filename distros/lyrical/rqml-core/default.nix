
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, libGL, libGLU, nlohmann_json, qml6-ros2-plugin, qt6, ros-babel-fish-test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-rqml-core";
  version = "3.26.42-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/lyrical/rqml_core/3.26.42-3.tar.gz";
    name = "3.26.42-3.tar.gz";
    sha256 = "5347cd5c9f9d2bbb7c7f9fe676e611cc0e6fd8c3cd1d0c439501ea6b8f29b05f";
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
