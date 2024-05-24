
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-swri-prefix-tools";
  version = "3.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_prefix_tools/3.6.1-3.tar.gz";
    name = "3.6.1-3.tar.gz";
    sha256 = "2012ff18d629668f45287461a84d024c99c89534b76591b956d459143453e971";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ python3Packages.psutil ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
