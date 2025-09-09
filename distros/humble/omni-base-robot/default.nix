
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-bringup, omni-base-controller-configuration, omni-base-description }:
buildRosPackage {
  pname = "ros-humble-omni-base-robot";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_robot/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "dc3ce3ec2967daa6704286fdfee8fce4a85086e79cbb5f99d06c19154413fec5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-bringup omni-base-controller-configuration omni-base-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_robot package";
    license = with lib.licenses; [ asl20 ];
  };
}
