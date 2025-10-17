
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joint-state-broadcaster, joint-trajectory-controller, pal-pro-gripper-controller-configuration, pal-pro-gripper-description }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-bringup";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_bringup/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "a9c2c234978f61b4d99bb0bae7a8700de0d6f4287924c06239406ea84197faf1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-broadcaster joint-trajectory-controller pal-pro-gripper-controller-configuration pal-pro-gripper-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files to upload the robot description and start the controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
