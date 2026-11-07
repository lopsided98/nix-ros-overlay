
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-limits, ros2-control-test-assets, ros2controlcli, transmission-interface }:
buildRosPackage {
  pname = "ros-humble-ros2-control";
  version = "2.54.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/ros2_control/2.54.4-1.tar.gz";
    name = "2.54.4-1.tar.gz";
    sha256 = "f5890e2d9d4cbd5e00e31f5e3020ba417fffd13c97305dcf8a389cacfbd85c19";
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
