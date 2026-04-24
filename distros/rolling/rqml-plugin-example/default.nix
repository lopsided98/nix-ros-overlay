
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qml6-ros2-plugin, qt6, rqml-core }:
buildRosPackage {
  pname = "ros-rolling-rqml-plugin-example";
  version = "3.26.42-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqml-release/archive/release/rolling/rqml_plugin_example/3.26.42-1.tar.gz";
    name = "3.26.42-1.tar.gz";
    sha256 = "db1eea65327297cc2d7c4172b38ee59ea166434a7f67f22cf825e9b26879b0b4";
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
