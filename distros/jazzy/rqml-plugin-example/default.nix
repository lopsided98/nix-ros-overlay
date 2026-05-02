
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qml6-ros2-plugin, qt6, rqml-core }:
buildRosPackage {
  pname = "ros-jazzy-rqml-plugin-example";
  version = "3.26.42-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/jazzy/rqml_plugin_example/3.26.42-1.tar.gz";
    name = "3.26.42-1.tar.gz";
    sha256 = "3783101b9643aa42cb90a602db2a10b9f756bd6b1cddc5b86f7818f536435b26";
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
