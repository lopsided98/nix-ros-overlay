
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fri-configuration-controller, fri-state-broadcaster, joint-group-impedance-controller, kuka-control-mode-handler, kuka-event-broadcaster, kuka-kss-message-handler }:
buildRosPackage {
  pname = "ros-humble-kuka-controllers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_controllers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ac223acf822a14c0cfc99f5fa4c1aa9a2f4ecd5d324718a5d60c031b668c2326";
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
