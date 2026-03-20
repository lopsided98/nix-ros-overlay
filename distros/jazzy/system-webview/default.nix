
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libcpp-httplib-dev, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, pkg-config, rclcpp, rosbridge-server }:
buildRosPackage {
  pname = "ros-jazzy-system-webview";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_webview-release/archive/release/jazzy/system_webview/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "25ac1086f6c94372e307bb7536146d3c5b815f308fcc25f26b45970c80d599ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_libcpp-httplib-dev ament-index-cpp pkg-config rclcpp rosbridge-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Real-time web-based system webview for ROS 2 — CPU, memory, swap, load average, and /rosout log viewer";
    license = with lib.licenses; [ mit ];
  };
}
