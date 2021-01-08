
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-laser-proc";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/foxy/laser_proc/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c04e3e3edaa464a64d316b602bae4355333def02679918cdc2171d11c5adfee9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ class-loader rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''laser_proc'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
