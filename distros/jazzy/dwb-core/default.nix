
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-util, pluginlib, rclcpp, sensor-msgs, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-dwb-core";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/dwb_core/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "3cfda6f34f7f283536538d8aa089b64dbd471178bf1fcfa23780f1f5acef72f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav-2d-msgs nav2-common sensor-msgs visualization-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dwb-msgs geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2-util pluginlib rclcpp std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DWB core interfaces package";
    license = with lib.licenses; [ bsd3 ];
  };
}
