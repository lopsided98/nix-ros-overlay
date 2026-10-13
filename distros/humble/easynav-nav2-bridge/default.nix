
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-interfaces, easynav-system, geometry-msgs, nav-msgs, nav2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-easynav-nav2-bridge";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_nav2_bridge-release/archive/release/humble/easynav_nav2_bridge/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "7a74669e0d111ee4f9549c39b4d4340d48e6f8f5b6c35f4e0908ca5d423e2dab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ action-msgs ament-cmake-gtest ament-lint-auto ament-lint-common easynav-common nav-msgs rclcpp-lifecycle ];
  propagatedBuildInputs = [ easynav-interfaces easynav-system geometry-msgs nav2-msgs rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Nav2 bridge exposing a nav2_msgs/action/NavigateToPose action server backed by EasyNav.";
    license = with lib.licenses; [ asl20 ];
  };
}
