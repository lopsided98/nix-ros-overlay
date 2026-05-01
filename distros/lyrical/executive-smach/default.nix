
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-lyrical-executive-smach";
  version = "3.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/lyrical/executive_smach/3.0.3-4.tar.gz";
    name = "3.0.3-4.tar.gz";
    sha256 = "47c39d4e9452d358440f14ad0ffc88b2fedcd970b70133f0620665a695fef344";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smach smach-msgs smach-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This metapackage depends on the SMACH library and ROS SMACH integration
    packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
