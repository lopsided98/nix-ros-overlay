
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, imu-sensor-broadcaster, joint-state-broadcaster, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-omni-base-controller-configuration";
  version = "2.0.18-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_controller_configuration/2.0.18-1.tar.gz";
    name = "2.0.18-1.tar.gz";
    sha256 = "46760e3f4a28096b4ef5021ae3ddd0bfb3d5472e19bf48e13c683d39adde92bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager imu-sensor-broadcaster joint-state-broadcaster ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
