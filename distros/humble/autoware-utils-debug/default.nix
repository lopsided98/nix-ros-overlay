
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-msgs, autoware-lint-common, autoware-utils-system, diagnostic-msgs, fmt, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-utils-debug";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/humble/autoware_utils_debug/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "93cb10186062fa839bb4b0853cec213f9858e0f18f031a588cca6e8ed8e5a425";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-internal-msgs autoware-utils-system diagnostic-msgs fmt rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_debug package";
    license = with lib.licenses; [ asl20 ];
  };
}
