
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-swri-console-util";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_console_util/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "c57446f4192135a2a68bf356c59fba8fb747c614ceda5f08e2a158d6eb5cac57";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
