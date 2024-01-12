
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, laser-geometry, rclcpp, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-lms1xx";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/LMS1xx-release/archive/release/humble/lms1xx/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d8c73fcdef78c1c07578d734b4279f410b54459f3b534076afea419bb0f71d33";
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
