
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, control-msgs, controller-manager-msgs, geometry-msgs, moveit-msgs, pal-statistics-msgs, qml6-ros2-plugin, qt6, rcl-interfaces, ros-babel-fish-test-msgs, rqml-core, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rqml-default-plugins";
  version = "3.26.42-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/jazzy/rqml_default_plugins/3.26.42-1.tar.gz";
    name = "3.26.42-1.tar.gz";
    sha256 = "e7ac35ea368516c64c4e52b43a348ec1ad1a172eae57ec9567a4935a11ea1241";
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
