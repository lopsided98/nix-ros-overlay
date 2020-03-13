
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-swri-console-util";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/swri_console_util/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "d00789e4702b243bed9c2deb70db746aec0aa720cb4f8d4ca56b03d7ffdb5877";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
