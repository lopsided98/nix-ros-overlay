
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-geography-utils, autoware-internal-debug-msgs, autoware-lint-common, autoware-map-msgs, autoware-sensing-msgs, boost, geographic-msgs, geographiclib, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-gnss-poser";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_gnss_poser/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "82bc986d86f694d7a4fa7249765e39e3d7a31f30b97f999a1fe12622f63e5095";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake boost ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-geography-utils autoware-internal-debug-msgs autoware-map-msgs autoware-sensing-msgs geographic-msgs geographiclib geometry-msgs rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The ROS 2 autoware_gnss_poser package";
    license = with lib.licenses; [ asl20 ];
  };
}
