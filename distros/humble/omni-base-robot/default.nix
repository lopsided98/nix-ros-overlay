
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-bringup, omni-base-controller-configuration, omni-base-description }:
buildRosPackage {
  pname = "ros-humble-omni-base-robot";
  version = "2.0.19-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_robot/2.0.19-1.tar.gz";
    name = "2.0.19-1.tar.gz";
    sha256 = "1fa91d5917d2e69671ef964cc1117e3a5e230145244f980f703bb55dbb894f2d";
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
