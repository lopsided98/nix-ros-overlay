
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-gripper-controller-configuration, pal-gripper-description }:
buildRosPackage {
  pname = "ros-humble-pal-gripper";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gripper-release/archive/release/humble/pal_gripper/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "d10ed88b621cc35211d5ff899de08e9678930ba82fb4f5c5a8b92a3f0be245d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pal-gripper-controller-configuration pal-gripper-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The pal_gripper package'';
    license = with lib.licenses; [ asl20 ];
  };
}
