
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-costmap-common, easynav-localizer, easynav-sensors, eigen, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-mhamcl-localizer";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_mhamcl_localizer/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "50141b243ce28e01fc3e2128f34cd73d9d2783a20bbdc8de9ad2c83cc0103bdf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-costmap-common easynav-localizer easynav-sensors eigen geometry-msgs nav-msgs pluginlib rclcpp tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Multi-Hypothesis AMCL Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
