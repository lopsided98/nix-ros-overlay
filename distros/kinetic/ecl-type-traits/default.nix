
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-kinetic-ecl-type-traits";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_type_traits/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "1d0065ebc2d093020959ca0695a7b671b68f3b15ab8757212bb312d0db35c568";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-config ecl-license ecl-mpl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extends c++ type traits and implements a few more to boot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
