
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-clober-serial";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_serial/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "c58f6d252084d39cca9281b2a6e4e4d4bef0c91fe599b3bf00f09aa4c79c8d54";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclcpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober serial package'';
    license = with lib.licenses; [ asl20 ];
  };
}
