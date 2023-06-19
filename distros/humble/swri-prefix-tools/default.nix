
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-humble-swri-prefix-tools";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_prefix_tools/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "611518ec0b3a7de7dece8430466bcd0688c2ca94be79a5cd389b5bf252387c03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ python3Packages.psutil ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
