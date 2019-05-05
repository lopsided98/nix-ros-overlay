
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin }:
buildRosPackage {
  pname = "ros-lunar-ecl-build";
  version = "0.61.7";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_tools-release/archive/release/lunar/ecl_build/0.61.7-0.tar.gz;
    sha256 = "30eed8cdb2fc6788e547720ff896c3488d1125148a357859c8a1ca5b0bd21b34";
  };

  buildInputs = [ ecl-license ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
