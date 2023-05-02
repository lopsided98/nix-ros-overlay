
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-interface";
  version = "3.12.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_interface/3.12.2-1.tar.gz";
    name = "3.12.2-1.tar.gz";
    sha256 = "9a13a6133a54c090f456e0cac0e18757f898b23e5ed772d40af03ecc0a7f7e54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake sensor-msgs ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
