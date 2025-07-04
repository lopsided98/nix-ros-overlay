
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, laser-geometry, rclcpp, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-lms1xx";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/LMS1xx-release/archive/release/jazzy/lms1xx/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f236caa8c4972f4797db0d4280cab5c3d599bcf6f857e1baf27989247dcb4715";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs laser-geometry rclcpp sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The lms1xx package contains a basic ROS 2 driver for the SICK LMS1xx line of LIDARs.";
    license = with lib.licenses; [ "LGPL" ];
  };
}
