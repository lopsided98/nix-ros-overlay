
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-swri-console-util";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/galactic/swri_console_util/3.5.1-1.tar.gz";
    name = "3.5.1-1.tar.gz";
    sha256 = "3d49fdcb7b7dfe48bb13bc1206ce2de1ff4555ec1bdfcc2ec8b6f724e4d24e69";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
