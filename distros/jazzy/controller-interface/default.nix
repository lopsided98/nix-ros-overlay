
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, fmt, geometry-msgs, hardware-interface, pal-statistics, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-controller-interface";
  version = "4.48.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/controller_interface/4.48.0-1.tar.gz";
    name = "4.48.0-1.tar.gz";
    sha256 = "4c3bfb374239461a3a4f5db2b936b3d9e97f45326ba172ef4c7d2e240f371416";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h fmt pal-statistics ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock geometry-msgs sensor-msgs std-msgs ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Base classes for controllers and syntax cookies for supporting common sensor types in controllers and broadcasters";
    license = with lib.licenses; [ asl20 ];
  };
}
