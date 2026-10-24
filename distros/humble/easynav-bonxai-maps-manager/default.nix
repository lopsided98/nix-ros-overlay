
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, eigen, graphicsmagick, nav-msgs, pcl, pcl-conversions, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaets, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-easynav-bonxai-maps-manager";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/humble/easynav_bonxai_maps_manager/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "023ec1bcf96007cb8093ea0df1d7ca2be3ba43205801e7502a9fc51f7a218280";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cpplint ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common easynav-core eigen graphicsmagick nav-msgs pcl pcl-conversions pluginlib rclcpp sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros yaets yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple MapsManager package.";
    license = with lib.licenses; [ asl20 ];
  };
}
