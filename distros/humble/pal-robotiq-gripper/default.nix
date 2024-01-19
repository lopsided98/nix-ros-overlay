
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-robotiq-controller-configuration, pal-robotiq-description, rclcpp }:
buildRosPackage {
  pname = "ros-humble-pal-robotiq-gripper";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_robotiq_gripper-release/archive/release/humble/pal_robotiq_gripper/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a10e06c89fe85466bf50cd75228d181a32dee0e0192835b43e893e0e01a2f4f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rclcpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pal-robotiq-controller-configuration pal-robotiq-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Robotiq Gripper Definition Packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
