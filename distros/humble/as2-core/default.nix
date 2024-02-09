
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-msgs, cv-bridge, eigen, geographic-msgs, geographiclib, geometry-msgs, image-transport, nav-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-as2-core";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_core/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "78db3266b9d6b249102b6ec6ef6a0226eb9a05931304262d3e72fe058c7c9c1b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-msgs cv-bridge eigen geographic-msgs geographiclib geometry-msgs image-transport nav-msgs rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aerostack2 core package which contains the basic classes of the Aerostack2 framework'';
    license = with lib.licenses; [ bsd3 ];
  };
}
