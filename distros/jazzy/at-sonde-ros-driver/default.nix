
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, libmodbus, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-at-sonde-ros-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/at_sonde_ros_driver-release/archive/release/jazzy/at_sonde_ros_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4e2a887a292c06048f82a4330e011962aba8e6393773f3c6058a49f143890345";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ libmodbus rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 driver to stream the monitored parameters of an In-Situ Aqua TROLL Multiparameter Sonde.";
    license = with lib.licenses; [ bsd3 ];
  };
}
