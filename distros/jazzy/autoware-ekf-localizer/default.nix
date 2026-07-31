
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-agnocast-wrapper, autoware-cmake, autoware-internal-debug-msgs, autoware-kalman-filter, autoware-lint-common, autoware-localization-util, autoware-utils-geometry, autoware-utils-logging, autoware-utils-system, diagnostic-msgs, eigen, eigen3-cmake-module, fmt, geometry-msgs, launch-testing-ament-cmake, nav-msgs, rclcpp, rclcpp-components, ros-testing, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-autoware-ekf-localizer";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_ekf_localizer/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "a961dbba53ec40c91f1b638be84ded810dd075b315aa0000af037713477769b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common launch-testing-ament-cmake ros-testing ];
  propagatedBuildInputs = [ autoware-agnocast-wrapper autoware-internal-debug-msgs autoware-kalman-filter autoware-localization-util autoware-utils-geometry autoware-utils-logging autoware-utils-system diagnostic-msgs fmt geometry-msgs nav-msgs rclcpp rclcpp-components std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_ekf_localizer package";
    license = with lib.licenses; [ asl20 ];
  };
}
