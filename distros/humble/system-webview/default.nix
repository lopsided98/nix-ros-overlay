
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, httplib, pkg-config, rclcpp, rosbridge-server }:
buildRosPackage {
  pname = "ros-humble-system-webview";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_webview-release/archive/release/humble/system_webview/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "0b3b028ece92125e5c0ab787f00a949f5d262f1d212d445830e391f766a8b0ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp httplib pkg-config rclcpp rosbridge-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Real-time web-based system webview for ROS 2 — CPU, memory, swap, load average, and /rosout log viewer";
    license = with lib.licenses; [ mit ];
  };
}
