
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, image-transport, rc-common-msgs, rc-genicam-api, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rc-genicam-driver";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_genicam_driver_ros2-release/archive/release/lyrical/rc_genicam_driver/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "f5ea02579f42411ae798d9dc0573b84f0c0d5aeadf71cdba7d47bb214ae2ca36";
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
