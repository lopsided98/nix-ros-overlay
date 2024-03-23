
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, pluginlib }:
buildRosPackage {
  pname = "ros-rolling-transmission-interface";
  version = "4.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/transmission_interface/4.7.0-1.tar.gz";
    name = "4.7.0-1.tar.gz";
    sha256 = "55c880ffe4fdfba37e8a9195fcc1ef351d66e492af98ab8d30c40a3c46db5330";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ hardware-interface pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "transmission_interface contains data structures for representing mechanical transmissions, methods for propagating values between actuator and joint spaces and tooling to support this.";
    license = with lib.licenses; [ asl20 ];
  };
}
