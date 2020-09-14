
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-swri-console-util";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/swri_console_util/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "fb445483aaa79c423c3ae8d43f7553f81479d3bc3c69134d866fcb36f7048836";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
