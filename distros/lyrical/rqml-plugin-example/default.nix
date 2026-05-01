
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qml6-ros2-plugin, qt6, rqml-core }:
buildRosPackage {
  pname = "ros-lyrical-rqml-plugin-example";
  version = "3.26.42-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/lyrical/rqml_plugin_example/3.26.42-3.tar.gz";
    name = "3.26.42-3.tar.gz";
    sha256 = "4e27051ac8a107fcec66bdffaef7b456dd980013f7c0f594fb31c156d592f774";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qml6-ros2-plugin qt6.qtdeclarative rqml-core ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An example plugin for RQml";
    license = with lib.licenses; [ "MIT-0" ];
  };
}
