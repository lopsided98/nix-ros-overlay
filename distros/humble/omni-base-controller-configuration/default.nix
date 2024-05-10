
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, controller-manager, imu-sensor-broadcaster, joint-state-broadcaster, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-omni-base-controller-configuration";
  version = "2.0.9-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_controller_configuration/2.0.9-1.tar.gz";
    name = "2.0.9-1.tar.gz";
    sha256 = "6e8db959569f0ab991adfb2ffa744acac11372a77c168394b3ac3fe8a17f65a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ controller-manager imu-sensor-broadcaster joint-state-broadcaster ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
