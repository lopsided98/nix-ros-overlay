
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-trajectory-controller, launch, launch-pal, pal-pro-gripper-controller-configuration, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-controller-configuration";
  version = "2.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_controller_configuration/2.8.4-1.tar.gz";
    name = "2.8.4-1.tar.gz";
    sha256 = "4d15ad8df2059cbea45428ccabf562b86b3b3c95e89bb8d897b31c1c19e04649";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager joint-trajectory-controller launch launch-pal pal-pro-gripper-controller-configuration ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_sea_arm_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
