
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, image-transport, rc-common-msgs, rc-genicam-api, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-rolling-rc-genicam-driver";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_genicam_driver_ros2-release/archive/release/rolling/rc_genicam_driver/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "5bad87f67888627674e0e49d7e69426e4801d4eae6bb4adfee0bc0eaf4e0299d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ diagnostic-updater image-transport rc-common-msgs rc-genicam-api rclcpp rclcpp-components sensor-msgs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver for rc_visard and rc_cube from Roboception GmbH'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
