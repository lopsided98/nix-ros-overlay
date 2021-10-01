
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, ros2-control-test-assets, ros2controlcli, transmission-interface }:
buildRosPackage {
  pname = "ros-galactic-ros2-control";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/galactic/ros2_control/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3d3c38c005eadf8974b215713e48662a94fee45dc5c6f082a5907b2bea880253";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface ros2-control-test-assets ros2controlcli transmission-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
