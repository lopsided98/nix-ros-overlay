
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, force-torque-sensor-broadcaster, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-talos-controller-configuration";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_controller_configuration/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "4706340d21628b0046680bb8b6f0eecb9b5b220c7fd627765c5eaa30d220a2cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ force-torque-sensor-broadcaster imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-pal ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The talos_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
