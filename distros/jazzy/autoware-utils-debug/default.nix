
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-msgs, autoware-lint-common, autoware-utils-system, diagnostic-msgs, fmt, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-debug";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_debug/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "12126862043ac76d3120a8831336188c09ece3a3a52c774c979a5f6918746f88";
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
