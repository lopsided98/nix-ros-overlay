
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, diff-drive-controller, imu-sensor-broadcaster, joint-state-broadcaster, launch, launch-pal, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-pmb2-controller-configuration";
  version = "5.4.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_controller_configuration/5.4.0-1.tar.gz";
    name = "5.4.0-1.tar.gz";
    sha256 = "8cd319479e184c214be4b3566b670923fbfc2325363d31c2be64f21849b3e064";
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
