
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, geometry-msgs, pluginlib, rviz-common, rviz-rendering }:
buildRosPackage {
  pname = "ros-iron-snowbot-operating-system";
  version = "0.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/snowbot_release/archive/release/iron/snowbot_operating_system/0.1.2-4.tar.gz";
    name = "0.1.2-4.tar.gz";
    sha256 = "6f2763f95aba54f6ba777eec23f1febfa70a98bb66674e03e95de9454211da04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ];
  propagatedBuildInputs = [ ament-cmake-ros geometry-msgs pluginlib rviz-common rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The weather outside is frightful'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
