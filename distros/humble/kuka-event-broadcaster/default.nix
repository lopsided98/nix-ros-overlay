
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-kuka-event-broadcaster";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_event_broadcaster/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9b7230335eb3485c5382823c47f76103f38668e447d6cdde7514866ac5d5b73c";
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
