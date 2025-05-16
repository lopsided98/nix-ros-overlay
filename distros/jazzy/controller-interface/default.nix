
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, geometry-msgs, hardware-interface, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-controller-interface";
  version = "4.29.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/controller_interface/4.29.0-1.tar.gz";
    name = "4.29.0-1.tar.gz";
    sha256 = "adf2586f545db17d3c39709fd924ce3992f73747011ee2ea0b416f28b53a054d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ros2-control-cmake sensor-msgs ];
  checkInputs = [ ament-cmake-gmock geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Base classes for controllers and syntax cookies for supporting common sensor types in controllers and broadcasters";
    license = with lib.licenses; [ asl20 ];
  };
}
