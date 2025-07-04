
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, diagnostic-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-diagnostics";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_diagnostics/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "5a5f5cf8dbcccba4ad3b10966d72fc9fa90302e1e86846382ad55afe61e62789";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_diagnostics package";
    license = with lib.licenses; [ asl20 ];
  };
}
