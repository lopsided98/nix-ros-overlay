
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, pluginlib }:
buildRosPackage {
  pname = "ros-rolling-transmission-interface";
  version = "4.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/transmission_interface/4.5.0-2.tar.gz";
    name = "4.5.0-2.tar.gz";
    sha256 = "2a3c6a9bffc1791e16c731b639c50a42a0fd98d7c576c0133c75b12d80a92b8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ hardware-interface pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''transmission_interface contains data structures for representing mechanical transmissions, methods for propagating values between actuator and joint spaces and tooling to support this.'';
    license = with lib.licenses; [ asl20 ];
  };
}
