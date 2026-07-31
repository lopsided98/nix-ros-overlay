
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-utils-rclcpp";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/humble/autoware_utils_rclcpp/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "69825cbee0173af156855b3f96f8a7634ed778528440898d084c3b494838cc3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common std-msgs ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_rclcpp package";
    license = with lib.licenses; [ asl20 ];
  };
}
