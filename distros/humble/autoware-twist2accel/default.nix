
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-agnocast-wrapper, autoware-cmake, autoware-lint-common, autoware-signal-processing, autoware-utils-geometry, geometry-msgs, nav-msgs, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-twist2accel";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_twist2accel/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "035dab753cc376fc3ffe3975e7bb9fa6c59f18b740aa425109f638b4f8b6ed6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-agnocast-wrapper autoware-signal-processing autoware-utils-geometry geometry-msgs nav-msgs rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The acceleration estimation package";
    license = with lib.licenses; [ asl20 ];
  };
}
