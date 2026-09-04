
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-mavlink-bridge";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/husarion/rosbot_mavlink_bridge-release/archive/release/jazzy/rosbot_mavlink_bridge/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "2013b8c93a1906585c46a72f5fd898af880d67cf9c6ed3c90ee55f8a65dfd48f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bridge node that translates the firmware's MAVLink wire protocol into the
    same ROS 2 API the micro-ROS agent currently exposes, so downstream
    consumers (e.g. rosbot_ros) see byte-identical topics/services. Single
    source tree builds for both jazzy and humble (see MAVLINK_MIGRATION.md
    D24).";
    license = with lib.licenses; [ asl20 ];
  };
}
