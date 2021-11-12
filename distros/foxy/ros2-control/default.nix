
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, hardware-interface, ros2-control-test-assets, ros2controlcli }:
buildRosPackage {
  pname = "ros-foxy-ros2-control";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/ros2_control/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "5bcdcbd23030d7117b3a1b1743104cac324c3d296e23a4ac486a28a267d1d14a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface ros2-control-test-assets ros2controlcli ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
