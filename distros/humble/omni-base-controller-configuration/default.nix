
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, joint-state-broadcaster, ros2controlcli, topic-tools }:
buildRosPackage {
  pname = "ros-humble-omni-base-controller-configuration";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_controller_configuration/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "abef981651e139fb46dccf45960762849ff39c67ae370336f3804dd9e2d4179b";
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
