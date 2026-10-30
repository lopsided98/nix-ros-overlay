
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, geometry-msgs, interactive-markers, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, std-srvs, tf2-ros, visualization-msgs, yaets, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-easynav-routes-maps-manager";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_routes_maps_manager/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "2dbb33588f1cc79ddf8abe9dee4d29a83189ff000d452355c5a977b22c882ea2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common easynav-core easynav-costmap-common geometry-msgs interactive-markers nav-msgs pluginlib rclcpp rclcpp-lifecycle rosidl-default-runtime std-srvs tf2-ros visualization-msgs yaets yaml-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Easy Navigation: Routes MapsManager package.";
    license = with lib.licenses; [ asl20 ];
  };
}
