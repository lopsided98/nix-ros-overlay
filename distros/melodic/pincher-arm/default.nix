
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pincher-arm-bringup, pincher-arm-description, pincher-arm-ikfast-plugin, pincher-arm-moveit-config, pincher-arm-moveit-demos }:
buildRosPackage {
  pname = "ros-melodic-pincher-arm";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/pincher_arm-release/archive/release/melodic/pincher_arm/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "7ba2563e83f8fb00c6071aa005888c7746fb5a23bf73b488178e3c6cb71a56d3";
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
