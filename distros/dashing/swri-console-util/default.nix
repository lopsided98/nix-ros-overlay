
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-swri-console-util";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_console_util/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "c5169924a60d84cdea50c8b84e34d86b09811b1811add4a6a355a9e6c7333e8b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
