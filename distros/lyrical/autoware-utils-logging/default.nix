
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, logging-demo, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-autoware-utils-logging";
  version = "1.4.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/lyrical/autoware_utils_logging/1.4.2-4.tar.gz";
    name = "1.4.2-4.tar.gz";
    sha256 = "13a7f3e78ecd3204321fc20678d23aede964ceee524fef55d68bf85f2fdda071";
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
