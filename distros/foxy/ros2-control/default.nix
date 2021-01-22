
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, hardware-interface, ros2controlcli }:
buildRosPackage {
  pname = "ros-foxy-ros2-control";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/ros2_control/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "5fdef2e8972ab9a69f5a2c2ef5984b3052a60b36d2d7ae6b1051b5c7351dd6fd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface ros2controlcli ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
