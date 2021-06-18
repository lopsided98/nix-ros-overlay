
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, hardware-interface, ros2-control-test-assets, ros2controlcli }:
buildRosPackage {
  pname = "ros-foxy-ros2-control";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/ros2_control/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "7e80381a0f5e3b1a7572ca40a9b68469be8727dc255037d834ef44bcc36ccf37";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface ros2-control-test-assets ros2controlcli ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
