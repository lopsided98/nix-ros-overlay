
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libcpp-httplib-dev, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, pkg-config, rclcpp, rosbridge-server }:
buildRosPackage {
  pname = "ros-rolling-system-webview";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_webview-release/archive/release/rolling/system_webview/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "73b007230189f5b964c9406920604a56e1d29c312a31c30c4460b90b9836f17e";
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
