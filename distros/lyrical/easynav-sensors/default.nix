
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, easynav-common, geometry-msgs, nav-msgs, pcl-conversions, pcl-ros, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-lyrical-easynav-sensors";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/lyrical/easynav_sensors/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "ed4aa26dc99be32630057dffc3fabc1ebc1f64f217bdaeb8f4eac7f8528f977b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge easynav-common geometry-msgs nav-msgs pcl-conversions pcl-ros pluginlib rclcpp rclcpp-lifecycle sensor-msgs tf2-geometry-msgs tf2-ros vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Sensors package.";
    license = with lib.licenses; [ asl20 ];
  };
}
