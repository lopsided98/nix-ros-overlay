
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-laser-proc";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/lyrical/laser_proc/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "d27b95cade91195eaf15af0f0d0793763f4e05bef88aa5566ec8b986fe4ecc99";
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
