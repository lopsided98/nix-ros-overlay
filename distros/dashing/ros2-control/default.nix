
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-parameter-server, hardware-interface, test-robot-hardware }:
buildRosPackage {
  pname = "ros-dashing-ros2-control";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/dashing/ros2_control/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "be32aea241c99098b0b69d204f501dc400b7eb3227b2adc01adf62b42684b66d";
  };

  buildType = "ament_cmake";
  checkInputs = [ test-robot-hardware ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-parameter-server hardware-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
