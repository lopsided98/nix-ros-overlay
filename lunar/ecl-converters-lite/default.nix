
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-config }:
buildRosPackage {
  pname = "ros-lunar-ecl-converters-lite";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/lunar/ecl_converters_lite/0.61.6-0.tar.gz;
    sha256 = "cca132698ebb4c71d00d8f3dc8dad0b021ca2e4dbb45ef0c82d656c6579c89b8";
  };

  buildInputs = [ ecl-license ecl-config ];
  propagatedBuildInputs = [ ecl-license ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These are a very simple version of some of the functions in ecl_converters 
     suitable for firmware development. That is, there is no use of new, 
     templates or exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
