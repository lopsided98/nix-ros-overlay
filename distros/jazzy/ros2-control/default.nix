
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits, ros2-control-test-assets, ros2controlcli, transmission-interface }:
buildRosPackage {
  pname = "ros-jazzy-ros2-control";
  version = "4.42.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/ros2_control/4.42.1-1.tar.gz";
    name = "4.42.1-1.tar.gz";
    sha256 = "c62737c7750755f721bd7e29868547457e145b762c1c2f1e36afce4d44b00f31";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs hardware-interface joint-limits ros2-control-test-assets ros2controlcli transmission-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for ROS2 control related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
