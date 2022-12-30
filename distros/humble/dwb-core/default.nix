
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, sensor-msgs, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-dwb-core";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/dwb_core/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "8ea0afc837bc9accee4aa2e817c0a73ee835a84e7d68cff8ed5944187f9d0a4b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav-2d-msgs nav2-common sensor-msgs visualization-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dwb-msgs geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2-util pluginlib rclcpp std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ bsd3 ];
  };
}
