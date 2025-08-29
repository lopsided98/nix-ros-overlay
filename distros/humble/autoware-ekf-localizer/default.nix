
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-kalman-filter, autoware-lint-common, autoware-localization-util, autoware-utils-geometry, autoware-utils-logging, autoware-utils-system, diagnostic-msgs, eigen, eigen3-cmake-module, fmt, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, ros-testing, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-ekf-localizer";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_ekf_localizer/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "09594dd8a6be54088b50c7a02a38bc7a0c259c76c9bde428645a9afbf03d9a45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ros-testing ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-kalman-filter autoware-localization-util autoware-utils-geometry autoware-utils-logging autoware-utils-system diagnostic-msgs fmt geometry-msgs nav-msgs rclcpp rclcpp-components std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_ekf_localizer package";
    license = with lib.licenses; [ asl20 ];
  };
}
