
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, pcl-conversions, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-easynav-sensors";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_sensors/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "a247d44fa167f89b8dd0c216048c246a9737b97fff7c5fe0daeab07c2547e099";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common pcl-conversions ];
  propagatedBuildInputs = [ easynav-common rclcpp rclcpp-lifecycle sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Sensors package.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
