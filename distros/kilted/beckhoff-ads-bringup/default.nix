
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kilted-beckhoff-ads-bringup";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/b-robotized/beckhoff_ads_driver-release/archive/release/kilted/beckhoff_ads_bringup/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b4847b09c970f0df0c68932c0e1cc70737afecd06e4ee06392efee6b6f35c53c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demo bringup package for beckhoff_ads_hardware_interface";
    license = with lib.licenses; [ asl20 ];
  };
}
