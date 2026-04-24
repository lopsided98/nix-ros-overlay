
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qml6-ros2-plugin, qt6, rqml-core }:
buildRosPackage {
  pname = "ros-kilted-rqml-plugin-example";
  version = "3.26.41-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/kilted/rqml_plugin_example/3.26.41-1.tar.gz";
    name = "3.26.41-1.tar.gz";
    sha256 = "7ec9c4f1558042c2fc0fa9acaab36c3691e6564eb855399b3219ba3b0c8f1ded";
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
