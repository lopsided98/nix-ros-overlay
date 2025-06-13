
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, image-transport, rc-common-msgs, rc-genicam-api, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-kilted-rc-genicam-driver";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_genicam_driver_ros2-release/archive/release/kilted/rc_genicam_driver/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "b7532f48a97c7bd4b4ef3186e2db879823d273a2dc6cab22a8a2fe3cb8f7d39d";
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
