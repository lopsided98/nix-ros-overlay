
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, image-transport, rc-common-msgs, rc-genicam-api, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-foxy-rc-genicam-driver";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_genicam_driver_ros2-release/archive/release/foxy/rc_genicam_driver/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "4f99abacf894ce6f2d8bfc715e45f4fafb625acc58e20d895d2bc4e078131d0c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ diagnostic-updater image-transport rc-common-msgs rc-genicam-api rclcpp rclcpp-components sensor-msgs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver for rc_visard sensor from Roboception GmbH'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
