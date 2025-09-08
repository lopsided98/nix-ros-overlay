
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, geometry-msgs, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-controller-interface";
  version = "2.51.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_interface/2.51.0-1.tar.gz";
    name = "2.51.0-1.tar.gz";
    sha256 = "95a734a18d5ec620f398f2335c6499791fc49c3c0807e60c4dbef520e7b830d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gmock geometry-msgs sensor-msgs ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Description of controller_interface";
    license = with lib.licenses; [ asl20 ];
  };
}
