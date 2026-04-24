
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_micro_ros_agent, _unresolved_tf_namespace_bridge, ament-cmake, ament-cmake-pytest, launch, launch-pytest, launch-ros, nav-msgs, python3Packages, rclpy, rosbot-controller, rosbot-joy, rosbot-localization, rosbot-utils, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-bringup";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_bringup/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "89446d60453bc15ec7fd4be04e0e314d5f2360ec45245ccdaa80eb2098ce7a67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest launch launch-pytest launch-ros nav-msgs python3Packages.pytest rclpy sensor-msgs ];
  propagatedBuildInputs = [ _unresolved_micro_ros_agent _unresolved_tf_namespace_bridge launch launch-ros rosbot-controller rosbot-joy rosbot-localization rosbot-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROSbot Series bringup package";
    license = with lib.licenses; [ asl20 ];
  };
}
