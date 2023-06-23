
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, laser-geometry, rclcpp, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-lms1xx";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/LMS1xx-release/archive/release/humble/lms1xx/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7fffa4273c75cd2865f6d3a55b1aeb1b46d7a45a01e38cd60f5f772ab180be95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs laser-geometry rclcpp sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The lms1xx package contains a basic ROS 2 driver for the SICK LMS1xx line of LIDARs.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
