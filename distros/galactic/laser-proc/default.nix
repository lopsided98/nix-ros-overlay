
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-laser-proc";
  version = "1.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/galactic/laser_proc/1.0.2-4.tar.gz";
    name = "1.0.2-4.tar.gz";
    sha256 = "f62296fdb3d556709f579529619f3dfe0b1f009ea43897e6acfe3c637e789648";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ class-loader rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''laser_proc'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
