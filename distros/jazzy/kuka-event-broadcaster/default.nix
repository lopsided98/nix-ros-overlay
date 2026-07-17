
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-kuka-event-broadcaster";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_event_broadcaster/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "92fe656f922fbe96423a0c48ecd3a9a3b7cfb131c0dc354e659f40a3f868f456";
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
