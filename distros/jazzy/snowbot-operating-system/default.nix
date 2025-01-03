
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, geometry-msgs, pluginlib, rviz-common, rviz-rendering }:
buildRosPackage {
  pname = "ros-jazzy-snowbot-operating-system";
  version = "0.1.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/snowbot_release/archive/release/jazzy/snowbot_operating_system/0.1.2-5.tar.gz";
    name = "0.1.2-5.tar.gz";
    sha256 = "2a3be0aca84896d1bde9b7512cbe3a8b63df590d8a0de7993952c55c984fce09";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ];
  propagatedBuildInputs = [ ament-cmake-ros geometry-msgs pluginlib rviz-common rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The weather outside is frightful";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
