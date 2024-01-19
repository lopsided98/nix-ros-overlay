
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, andino-control, andino-description, joy-linux, laser-filters, rosbag2-storage-mcap, rplidar-ros, teleop-twist-joy, twist-mux, v4l2-camera }:
buildRosPackage {
  pname = "ros-humble-andino-bringup";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_bringup/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "fe63198244682db93ae6b7d02faacf065c473ad97dab5e5c41ac0485c8f18915";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ andino-control andino-description joy-linux laser-filters rosbag2-storage-mcap rplidar-ros teleop-twist-joy twist-mux v4l2-camera ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains launch files to bring up andinobot robot.'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
