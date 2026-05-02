
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, control-msgs, controller-manager-msgs, geometry-msgs, moveit-msgs, pal-statistics-msgs, qml6-ros2-plugin, qt6, rcl-interfaces, ros-babel-fish-test-msgs, rqml-core, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-kilted-rqml-default-plugins";
  version = "3.26.42-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/kilted/rqml_default_plugins/3.26.42-1.tar.gz";
    name = "3.26.42-1.tar.gz";
    sha256 = "3ff35ee619faedc235218600107f2a5f0cf9527789f52fa01c21da5159102419";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto qml6-ros2-plugin rcl-interfaces ros-babel-fish-test-msgs ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs geometry-msgs moveit-msgs pal-statistics-msgs qml6-ros2-plugin qt6.qtdeclarative qt6.qtmultimedia rqml-core sensor-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Default plugins for the QML-based robotics visualization and control tool RQml for ROS 2.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
