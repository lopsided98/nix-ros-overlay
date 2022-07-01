
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, ros2-control-test-assets, ros2controlcli, transmission-interface }:
buildRosPackage {
  pname = "ros-humble-ros2-control";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/ros2_control/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "cd8b0f926e36823a7739828e128ea675ff595a7e5e1f3529eac8fea1f57dc294";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface ros2-control-test-assets ros2controlcli transmission-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for ROS2 control related packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
