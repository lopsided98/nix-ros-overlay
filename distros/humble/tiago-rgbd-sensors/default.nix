
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-tiago-rgbd-sensors";
  version = "4.12.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_rgbd_sensors/4.12.0-1.tar.gz";
    name = "4.12.0-1.tar.gz";
    sha256 = "49630d48734c6d1c53aa57763147a7d8228ff1927aa957d927c5fce6efabc111";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files and scripts needed to bring up the ROS nodes of a TIAGo robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
