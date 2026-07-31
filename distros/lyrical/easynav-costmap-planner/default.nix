
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, geometry-msgs, nav-msgs, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-easynav-costmap-planner";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_costmap_planner/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "f4cf24408ec360c02c056836bd9fd9b4538f70544f56d97c9d4f60450e195e8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-costmap-common geometry-msgs nav-msgs pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Costmap planner package.";
    license = with lib.licenses; [ asl20 ];
  };
}
