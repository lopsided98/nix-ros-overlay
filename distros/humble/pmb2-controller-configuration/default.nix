
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, imu-sensor-broadcaster, joint-state-broadcaster, launch, launch-pal, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-pmb2-controller-configuration";
  version = "5.3.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_controller_configuration/5.3.1-1.tar.gz";
    name = "5.3.1-1.tar.gz";
    sha256 = "e474443f2a157590eb12c76420cb07d5080332f98319b435f29b558506a99719";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller imu-sensor-broadcaster joint-state-broadcaster launch launch-pal ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files and scripts needed to configure
    the controllers of the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
