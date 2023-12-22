
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits, ros2-control-test-assets, ros2controlcli, transmission-interface }:
buildRosPackage {
  pname = "ros-iron-ros2-control";
  version = "3.21.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/ros2_control/3.21.2-1.tar.gz";
    name = "3.21.2-1.tar.gz";
    sha256 = "9f5e788df5b192b0153b641b704e5e7880994e7e0c925b0f5c4cde2d809f0431";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface joint-limits ros2-control-test-assets ros2controlcli transmission-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
