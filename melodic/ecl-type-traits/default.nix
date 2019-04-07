
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-melodic-ecl-type-traits";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_type_traits/0.62.2-0.tar.gz;
    sha256 = "d7546064c5966aa158f8340aa0583fcdc804279613ca7facee9b0b0794a6be2d";
  };

  buildInputs = [ ecl-license ecl-config ecl-mpl ];
  propagatedBuildInputs = [ ecl-license ecl-config ecl-mpl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extends c++ type traits and implements a few more to boot.'';
    #license = lib.licenses.BSD;
  };
}
