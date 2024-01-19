
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-noetic-ecl-type-traits";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_type_traits/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "3c344d595c1070b7aa7a44e669e201dbb9683f945cb668fe50b378fc25d199b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-mpl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extends c++ type traits and implements a few more to boot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
