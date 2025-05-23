
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-msgs, autoware-lint-common, autoware-utils-system, diagnostic-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-debug";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_debug/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "c0a2d08d572e2cda49d6e4bfd623abaa47ec9efddbd8ec85cf6d3ee61d4f9bc4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-internal-msgs autoware-utils-system diagnostic-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_debug package";
    license = with lib.licenses; [ asl20 ];
  };
}
