
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, logging-demo, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-logging";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_logging/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "f6b79dbdcd19c0568b2af2b085aaf0c5969f1866a7da9c954d115771a0aba636";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ logging-demo rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_logging package";
    license = with lib.licenses; [ asl20 ];
  };
}
