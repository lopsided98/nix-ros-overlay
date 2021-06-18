
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-controller-interface";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/controller_interface/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "a79375f0b4cb545d3bb5ba5bc56aee4061d3140d5a536d982b3e869886b654a9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
