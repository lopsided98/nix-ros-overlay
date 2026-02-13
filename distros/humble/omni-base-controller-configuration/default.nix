
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-state-broadcaster, ros2controlcli, topic-tools }:
buildRosPackage {
  pname = "ros-humble-omni-base-controller-configuration";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_controller_configuration/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "3991f79176d731d4396bf12167e9340dc06e24d03b0339d06110941e750289da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager joint-state-broadcaster ros2controlcli topic-tools ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
