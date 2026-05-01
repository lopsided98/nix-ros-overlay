
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, httplib, pkg-config, rclcpp, rosbridge-server }:
buildRosPackage {
  pname = "ros-lyrical-system-webview";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_webview-release/archive/release/lyrical/system_webview/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "c3c0ecd6ca5e926df6f64e360f016255b57eafdc7b23311a1f46b2ed5236dee8";
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
