
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, httplib, pkg-config, rclcpp, rosbridge-server }:
buildRosPackage {
  pname = "ros-humble-system-webview";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_webview-release/archive/release/humble/system_webview/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "63e4bd0d7e650e5f387105983897a72974d5ffc9b99c364b924e448f2231b686";
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
