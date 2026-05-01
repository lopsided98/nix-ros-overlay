
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, libmodbus, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-at-sonde-ros-driver";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/at_sonde_ros_driver-release/archive/release/lyrical/at_sonde_ros_driver/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "f41a1cb41fefde7894da7829bf343fff39a82cb27f8b3da69d667dcb9a45b6f8";
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
