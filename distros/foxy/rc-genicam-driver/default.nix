
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, image-transport, rc-common-msgs, rc-genicam-api, rclcpp, rclcpp-components, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-foxy-rc-genicam-driver";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_genicam_driver_ros2-release/archive/release/foxy/rc_genicam_driver/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "a53a8934ed6c21f817971e39518f09507a5a962c926dfa6efaaad8d5442bf744";
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
