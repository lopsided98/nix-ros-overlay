
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, fmt, geometry-msgs, hardware-interface, joint-limits, lifecycle-msgs, pal-statistics, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-controller-interface";
  version = "4.50.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/controller_interface/4.50.0-1.tar.gz";
    name = "4.50.0-1.tar.gz";
    sha256 = "1fbb9d0c075b045be616bb5699055c8653cdea928068ed07918815f5ec81d4f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock geometry-msgs sensor-msgs std-msgs ];
  propagatedBuildInputs = [ fmt geometry-msgs hardware-interface joint-limits lifecycle-msgs pal-statistics rclcpp rclcpp-lifecycle realtime-tools sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Base classes for controllers and syntax cookies for supporting common sensor types in controllers and broadcasters";
    license = with lib.licenses; [ asl20 ];
  };
}
