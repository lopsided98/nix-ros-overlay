
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, geometry-msgs, pluginlib, rviz-common, rviz-rendering }:
buildRosPackage {
  pname = "ros-kilted-snowbot-operating-system";
  version = "0.1.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/snowbot_release/archive/release/kilted/snowbot_operating_system/0.1.2-5.tar.gz";
    name = "0.1.2-5.tar.gz";
    sha256 = "5ea18ad5aa271b42526e89b6d09dfb5d89bb0126aa6ee4320b9e06959afb2bc2";
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
