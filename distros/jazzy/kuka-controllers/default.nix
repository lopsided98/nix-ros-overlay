
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fri-configuration-controller, fri-state-broadcaster, joint-group-impedance-controller, kuka-control-mode-handler, kuka-event-broadcaster, kuka-kss-message-handler }:
buildRosPackage {
  pname = "ros-jazzy-kuka-controllers";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_controllers/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6dd135ef8a49e6e675969a4f45297f490290c6d8d7f1f39792a3ce83a23f7451";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fri-configuration-controller fri-state-broadcaster joint-group-impedance-controller kuka-control-mode-handler kuka-event-broadcaster kuka-kss-message-handler ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 controllers for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
