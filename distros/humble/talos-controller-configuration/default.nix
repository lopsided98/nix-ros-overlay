
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, diagnostic-aggregator, force-torque-sensor-broadcaster, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-talos-controller-configuration";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_controller_configuration/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "c4c44f11d3204b68dea291fc992b5c5f18ed7104e60a0cf7f52e96518df95a9a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator force-torque-sensor-broadcaster imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-pal ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The talos_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
