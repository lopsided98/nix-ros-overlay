
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, foros-msgs, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-humble-foros-inspector";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foros-release/archive/release/humble/foros_inspector/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "affa1521d17e45682a11a66e4abdd0bf6edb6aecefda5a5fdf7d5e74d923e2b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ foros-msgs ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fail over ROS inspector'';
    license = with lib.licenses; [ asl20 ];
  };
}
