
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-kuka-event-broadcaster";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_event_broadcaster/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "053af4e4c7707cbf87152a1f9642e54d93b1d6b2b38d186824fc5abb83d69933";
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
