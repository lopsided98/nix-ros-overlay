
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, sensor-msgs, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-dwb-core";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/dwb_core/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "aff9c01a907bd1bcd28101275f1944698e6b6e7b0f47fa4dbb91f14309773db6";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav-2d-msgs nav2-common sensor-msgs visualization-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dwb-msgs geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2-util pluginlib rclcpp std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
