
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-geography-utils, autoware-internal-debug-msgs, autoware-lint-common, autoware-map-msgs, autoware-sensing-msgs, boost, geographic-msgs, geographiclib, geometry-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-gnss-poser";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_gnss_poser/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "0a6309b458e8457a95987a52facc4f6bfda651fc104942ab855507298cb2b269";
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
