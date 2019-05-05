
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-concepts, ecl-mpl }:
buildRosPackage {
  pname = "ros-melodic-ecl-utilities";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_utilities/0.62.2-0.tar.gz;
    sha256 = "4e3ab2bd3246bbda3763e850f949bac0dcd3988bf5ec5269563bd4906ad23bdd";
  };

  buildInputs = [ ecl-license ecl-concepts ecl-mpl ];
  propagatedBuildInputs = [ ecl-license ecl-concepts ecl-mpl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Includes various supporting tools and utilities for c++ programming.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
