
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, andino-control, andino-description, joy-linux, laser-filters, rosbag2-storage-mcap, rplidar-ros, teleop-twist-joy, v4l2-camera, xterm }:
buildRosPackage {
  pname = "ros-humble-andino-bringup";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_bringup/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "27d0834b64a1114ec5c4ee3fe8b342ca3e0ea7a65c3d1e3369bf6ffa315de219";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ andino-control andino-description joy-linux laser-filters rosbag2-storage-mcap rplidar-ros teleop-twist-joy v4l2-camera xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains launch files to bring up andinobot robot.";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
