
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, force-torque-sensor-broadcaster, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-talos-controller-configuration";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_controller_configuration/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "e0d680d8a831e8227580bad35831e7c38428971cb9569affcf3f4acc65ad7f66";
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
