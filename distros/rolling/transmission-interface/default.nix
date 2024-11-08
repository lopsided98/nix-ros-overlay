
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, hardware-interface, pluginlib, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-transmission-interface";
  version = "4.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/transmission_interface/4.19.0-1.tar.gz";
    name = "4.19.0-1.tar.gz";
    sha256 = "df4defba3783c99527a0008d9743dedfab7eb8ef27d8ed74a6f19da37f6c87c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ hardware-interface pluginlib ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "transmission_interface contains data structures for representing mechanical transmissions, methods for propagating values between actuator and joint spaces and tooling to support this.";
    license = with lib.licenses; [ asl20 ];
  };
}
