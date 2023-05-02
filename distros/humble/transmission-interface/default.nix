
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, pluginlib }:
buildRosPackage {
  pname = "ros-humble-transmission-interface";
  version = "2.25.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/transmission_interface/2.25.2-1.tar.gz";
    name = "2.25.2-1.tar.gz";
    sha256 = "f32e0a6ba40c4e1cd115e5d0c6d827b0e8441c4aa0cf703b504913c7eb4c824e";
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
