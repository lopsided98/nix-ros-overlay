
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, geometry-msgs, pluginlib, rviz-common, rviz-rendering }:
buildRosPackage {
  pname = "ros-humble-snowbot-operating-system";
  version = "0.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/snowbot_release/archive/release/humble/snowbot_operating_system/0.1.2-3.tar.gz";
    name = "0.1.2-3.tar.gz";
    sha256 = "061b695db8610f6c7470112c46772925fe29aabbda12699da78b4be879f442d0";
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
