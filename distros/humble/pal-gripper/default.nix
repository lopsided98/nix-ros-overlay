
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-gripper-controller-configuration, pal-gripper-description }:
buildRosPackage {
  pname = "ros-humble-pal-gripper";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gripper-release/archive/release/humble/pal_gripper/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "45c892bf387bc6fc60dbd23b5406cd2d48a05b3452eee7c2c79119f74f7c4cc0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pal-gripper-controller-configuration pal-gripper-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The pal_gripper package";
    license = with lib.licenses; [ asl20 ];
  };
}
