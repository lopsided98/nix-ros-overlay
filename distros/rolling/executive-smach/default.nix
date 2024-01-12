
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-rolling-executive-smach";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/rolling/executive_smach/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "932124020892891fcc4ed7d2b5bca5d933b4b5b571996f75730afa3bd91bd3f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smach smach-msgs smach-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This metapackage depends on the SMACH library and ROS SMACH integration
    packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
