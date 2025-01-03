
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fri-configuration-controller, fri-state-broadcaster, joint-group-impedance-controller, kuka-control-mode-handler, kuka-event-broadcaster }:
buildRosPackage {
  pname = "ros-humble-kuka-controllers";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_controllers/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "c10fd68340674cf07df8e047d57446392e0dd1fad35cf689cf53d209385a94d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fri-configuration-controller fri-state-broadcaster joint-group-impedance-controller kuka-control-mode-handler kuka-event-broadcaster ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 controllers for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
