
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-kuka-event-broadcaster";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_event_broadcaster/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "bde4b99774ad6e9ea4935e0a6c53a3ec5fddfa1a1f1a0207a02a20bc422066e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface kuka-drivers-core pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Broadcaster of hardware events of KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
