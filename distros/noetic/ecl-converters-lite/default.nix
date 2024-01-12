
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-converters-lite";
  version = "0.61.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/noetic/ecl_converters_lite/0.61.6-1.tar.gz";
    name = "0.61.6-1.tar.gz";
    sha256 = "dc53dde0c57b21b207c2d4fee29c7bacc566e401492b05e31e884f8876e43708";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These are a very simple version of some of the functions in ecl_converters 
     suitable for firmware development. That is, there is no use of new, 
     templates or exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
