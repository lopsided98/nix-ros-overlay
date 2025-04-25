
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, geometry-msgs, hardware-interface, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-interface";
  version = "4.28.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_interface/4.28.1-1.tar.gz";
    name = "4.28.1-1.tar.gz";
    sha256 = "1c9192ae52c98a514a4e486ef7729016206d210068bfd58f3bd9fc390350ca4c";
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
