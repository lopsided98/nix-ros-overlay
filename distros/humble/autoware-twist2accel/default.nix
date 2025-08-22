
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-signal-processing, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, tf2 }:
buildRosPackage {
  pname = "ros-humble-autoware-twist2accel";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_twist2accel/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "d318d826bb50256d7eb6f1c4732b9b806fdb6b7a22e491bce2919e00e51e48ee";
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
