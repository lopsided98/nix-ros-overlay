
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, fmt, hardware-interface, pluginlib, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-kilted-transmission-interface";
  version = "5.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/transmission_interface/5.13.0-1.tar.gz";
    name = "5.13.0-1.tar.gz";
    sha256 = "2bb4339c5b9a70d7b54d587b9cabb95e4bc7a2bef9ab25ced8c9fd6f28f2684f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ fmt hardware-interface pluginlib ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "data structures for representing mechanical transmissions, methods for propagating values between actuator and joint spaces and tooling to support this.";
    license = with lib.licenses; [ asl20 ];
  };
}
