
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-agnocast-wrapper, autoware-cmake, autoware-internal-debug-msgs, autoware-lint-common, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-autoware-stop-filter";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_stop_filter/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "a712fe8c017b9826b4f8212da20f477d787933711eef668b4ec48dd6324db25d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-agnocast-wrapper autoware-internal-debug-msgs geometry-msgs nav-msgs rclcpp rclcpp-components tf2 ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The stop filter package";
    license = with lib.licenses; [ asl20 ];
  };
}
