
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, hardware-interface, ros2-control-test-assets, ros2controlcli }:
buildRosPackage {
  pname = "ros-foxy-ros2-control";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/ros2_control/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "3abb8e038ed976cd72c9da679faf4061ccdc86927330d8669bb4926818336746";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface ros2-control-test-assets ros2controlcli ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
