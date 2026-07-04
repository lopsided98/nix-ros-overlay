
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, launch, launch-pytest, launch-ros, nav-msgs, python3Packages, rclpy, rosbot-controller, rosbot-joy, rosbot-localization, rosbot-mavlink-bridge, rosbot-utils, sensor-msgs, tf-namespace-bridge }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-bringup";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_bringup/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "93fd969c339a2388ef396bab7f35529aed4390d1c2a191e7e94f326601377112";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest launch launch-pytest launch-ros nav-msgs python3Packages.pytest python3Packages.pyyaml rclpy sensor-msgs ];
  propagatedBuildInputs = [ launch launch-ros rosbot-controller rosbot-joy rosbot-localization rosbot-mavlink-bridge rosbot-utils tf-namespace-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROSbot Series bringup package";
    license = with lib.licenses; [ asl20 ];
  };
}
