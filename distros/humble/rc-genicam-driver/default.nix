
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, image-transport, rc-common-msgs, rc-genicam-api, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-humble-rc-genicam-driver";
  version = "0.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_genicam_driver_ros2-release/archive/release/humble/rc_genicam_driver/0.2.1-3.tar.gz";
    name = "0.2.1-3.tar.gz";
    sha256 = "5e17998fb1000e00dfa334bb1648def11d768cc8af72ddac0caaa70584ae4067";
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
