
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits, ros2-control-test-assets, ros2controlcli, transmission-interface }:
buildRosPackage {
  pname = "ros-rolling-ros2-control";
  version = "3.12.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2_control/3.12.2-1.tar.gz";
    name = "3.12.2-1.tar.gz";
    sha256 = "fc320c8860a76fac33fdf4404d675771df8268b670a43f1dcf48445d7b2dc98e";
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
