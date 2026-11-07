
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, eigen, geometry-msgs, nav-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-easynav-navmap-planner";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_navmap_planner/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "2fb6d104e8809d48f4b19fcad6932f3ffc8d111f5d707cbcceaefa34a4b2ca50";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ easynav-common easynav-core eigen geometry-msgs nav-msgs navmap-core navmap-ros navmap-ros-interfaces pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: navmap planner package.";
    license = with lib.licenses; [ asl20 ];
  };
}
