
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-signal-processing, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, tf2 }:
buildRosPackage {
  pname = "ros-humble-autoware-twist2accel";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_twist2accel/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "10e769926e31727e67aa0e0822e96949fadfef415c6adc881ddb1bb862fe6b3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-signal-processing geometry-msgs nav-msgs rclcpp rclcpp-components tf2 ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The acceleration estimation package";
    license = with lib.licenses; [ asl20 ];
  };
}
