
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-kalman-filter, autoware-lint-common, autoware-localization-util, autoware-utils-geometry, autoware-utils-logging, autoware-utils-system, diagnostic-msgs, eigen, eigen3-cmake-module, fmt, geometry-msgs, launch-testing-ament-cmake, nav-msgs, rclcpp, rclcpp-components, ros-testing, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-ekf-localizer";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_ekf_localizer/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "e68aca76e752b95feb4cf3312ff7e44f603c9278b58dd6f4e0f9bbf4e218d369";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common launch-testing-ament-cmake ros-testing ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-kalman-filter autoware-localization-util autoware-utils-geometry autoware-utils-logging autoware-utils-system diagnostic-msgs fmt geometry-msgs nav-msgs rclcpp rclcpp-components std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_ekf_localizer package";
    license = with lib.licenses; [ asl20 ];
  };
}
