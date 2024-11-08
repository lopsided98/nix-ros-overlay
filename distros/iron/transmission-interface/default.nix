
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, pluginlib }:
buildRosPackage {
  pname = "ros-iron-transmission-interface";
  version = "3.29.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/transmission_interface/3.29.0-1.tar.gz";
    name = "3.29.0-1.tar.gz";
    sha256 = "a7cbbccc651aeb7754535cdeaa0a129fc8ae94144a09fea28fda70999ab75a39";
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
