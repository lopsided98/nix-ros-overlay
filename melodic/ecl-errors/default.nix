
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-ecl-errors";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/melodic/ecl_errors/0.61.6-0.tar.gz;
    sha256 = "e41cdee101ab35c2963fc8e080294f597646006e246cae31242898b1b69e4eb9";
  };

  buildInputs = [ ecl-license ecl-config ];
  propagatedBuildInputs = [ ecl-license ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides lean and mean error mechanisms. 
    It includes c style error functions as well as a few 
    useful macros. For higher level mechanisms, 
    refer to ecl_exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
