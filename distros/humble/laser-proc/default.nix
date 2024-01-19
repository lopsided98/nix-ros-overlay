
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-laser-proc";
  version = "1.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/humble/laser_proc/1.0.2-5.tar.gz";
    name = "1.0.2-5.tar.gz";
    sha256 = "7de5503f77ce15b5c9bfad7ed79a06fbcb02407f9c94e8dbc3863589acdfa395";
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
