
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, image-transport, rc-common-msgs, rc-genicam-api, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-iron-rc-genicam-driver";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_genicam_driver_ros2-release/archive/release/iron/rc_genicam_driver/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "d0d18cf43f2279ae7a7a19b1f233d8be3658fa4fd5ded2e1b4d17bf478a414f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ diagnostic-updater image-transport rc-common-msgs rc-genicam-api rclcpp rclcpp-components sensor-msgs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Driver for rc_visard and rc_cube from Roboception GmbH";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
