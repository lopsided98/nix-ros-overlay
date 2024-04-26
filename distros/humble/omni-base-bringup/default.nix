
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, joy, joy-teleop, launch-pal, omni-base-controller-configuration, omni-base-description, robot-state-publisher, twist-mux }:
buildRosPackage {
  pname = "ros-humble-omni-base-bringup";
  version = "2.0.9-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_bringup/2.0.9-1.tar.gz";
    name = "2.0.9-1.tar.gz";
    sha256 = "4a1879bc9438d06847971a4882a2c2791716498ad9c3bb2be7f3fb3a480be68d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ joy joy-teleop launch-pal omni-base-controller-configuration omni-base-description robot-state-publisher twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_bringup package";
    license = with lib.licenses; [ asl20 ];
  };
}
