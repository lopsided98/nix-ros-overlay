
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-laser-proc";
  version = "1.0.2-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/kilted/laser_proc/1.0.2-7.tar.gz";
    name = "1.0.2-7.tar.gz";
    sha256 = "d9b53e2064e1d37dbe2be7e6482ffd1b379e52781e6e38fb708bb72aebb98821";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ class-loader rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "laser_proc";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
