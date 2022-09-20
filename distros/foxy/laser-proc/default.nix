
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-laser-proc";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/foxy/laser_proc/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "03c68a7d9b9cef1c049da4b6314cd86514f4f571e3ca02f004aaf92eb97514d4";
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
