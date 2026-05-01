
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits, ros2-control-test-assets, ros2controlcli, transmission-interface }:
buildRosPackage {
  pname = "ros-lyrical-ros2-control";
  version = "6.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/lyrical/ros2_control/6.7.0-3.tar.gz";
    name = "6.7.0-3.tar.gz";
    sha256 = "d0afa258970079948616fce845a703a620341e1fd0f8c945769fe63ece3da046";
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
