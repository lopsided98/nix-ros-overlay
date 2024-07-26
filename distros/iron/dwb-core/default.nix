
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, sensor-msgs, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-dwb-core";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/dwb_core/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "69b31b9db2c55df2bd7db87233389b64409f2248abe7bbb8d3dd7d55213ae14f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav-2d-msgs nav2-common sensor-msgs visualization-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dwb-msgs geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2-util pluginlib rclcpp std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO";
    license = with lib.licenses; [ bsd3 ];
  };
}
