
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, httplib, pkg-config, rclcpp, rosbridge-server }:
buildRosPackage {
  pname = "ros-rolling-system-webview";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_webview-release/archive/release/rolling/system_webview/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "7fadd6724188797622035caab93191ffa60729e9b4ea51608e92ef1858b8317a";
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
