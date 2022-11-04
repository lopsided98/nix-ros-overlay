
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-pincher-arm-description";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/pincher_arm-release/archive/release/melodic/pincher_arm_description/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "bbd4818fa00f7ba0830a82f40e9364e8032887fbbbc6d528deae126e3317f756";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for PhantomX Pincher arm'';
    license = with lib.licenses; [ bsdOriginal cc-by-nc-sa-40 ];
  };
}
