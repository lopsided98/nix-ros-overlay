
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, imu-sensor-broadcaster, joint-state-broadcaster, ros2controlcli, topic-tools }:
buildRosPackage {
  pname = "ros-humble-omni-base-controller-configuration";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_controller_configuration/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "99358a56ff5fbd8928ab24886d65d85191486f0d00bf943b25b1c097da0a23cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager imu-sensor-broadcaster joint-state-broadcaster ros2controlcli topic-tools ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
