
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pincher-arm-bringup, pincher-arm-description, pincher-arm-ikfast-plugin, pincher-arm-moveit-config, pincher-arm-moveit-demos }:
buildRosPackage {
  pname = "ros-noetic-pincher-arm";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/pincher_arm-release/archive/release/noetic/pincher_arm/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "c5f0fa05b6c03a083d31cd3acf4c9bd1ba83c519a45c2cda64b5f3e869453daa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pincher-arm-bringup pincher-arm-description pincher-arm-ikfast-plugin pincher-arm-moveit-config pincher-arm-moveit-demos ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pincher_arm metapackage.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
