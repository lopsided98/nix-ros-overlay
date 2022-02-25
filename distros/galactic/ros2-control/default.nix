
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, ros2-control-test-assets, ros2controlcli, transmission-interface }:
buildRosPackage {
  pname = "ros-galactic-ros2-control";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/galactic/ros2_control/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "103a4ef57243483d76b6441e06b411563e716dcba599db96f2af5295fec95487";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface ros2-control-test-assets ros2controlcli transmission-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
