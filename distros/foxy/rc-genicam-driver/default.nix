
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, image-transport, rc-common-msgs, rc-genicam-api, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-foxy-rc-genicam-driver";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_genicam_driver_ros2-release/archive/release/foxy/rc_genicam_driver/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "277dbe5453658c31c06dacba050321e1927191291d447b211bf6a8476ea1a3ab";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ diagnostic-updater image-transport rc-common-msgs rc-genicam-api rclcpp rclcpp-components sensor-msgs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver for rc_visard and rc_cube from Roboception GmbH'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
