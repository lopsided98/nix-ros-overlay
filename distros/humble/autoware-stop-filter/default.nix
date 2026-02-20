
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-lint-common, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, tf2 }:
buildRosPackage {
  pname = "ros-humble-autoware-stop-filter";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_stop_filter/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "ab04e30916684ccbe7866c1b05825ffc82a3dabd9087a12c9879f1a5d1bf0225";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs geometry-msgs nav-msgs rclcpp rclcpp-components tf2 ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The stop filter package";
    license = with lib.licenses; [ asl20 ];
  };
}
