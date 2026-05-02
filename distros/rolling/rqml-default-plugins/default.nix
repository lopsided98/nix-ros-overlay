
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, control-msgs, controller-manager-msgs, geometry-msgs, moveit-msgs, pal-statistics-msgs, qml6-ros2-plugin, qt6, rcl-interfaces, ros-babel-fish-test-msgs, rqml-core, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqml-default-plugins";
  version = "3.26.42-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/rolling/rqml_default_plugins/3.26.42-2.tar.gz";
    name = "3.26.42-2.tar.gz";
    sha256 = "6dd61c39828c4118d878cdab32a5767b7e6a1473db04411dc6853230250adb88";
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
