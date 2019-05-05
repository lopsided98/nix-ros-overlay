
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-config, ecl-build }:
buildRosPackage {
  pname = "ros-melodic-ecl-console";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/melodic/ecl_console/0.61.6-0.tar.gz;
    sha256 = "5586ad3bb23b745e301fb78ddc22ae1125f5b0c559d93e39b9c832ca2307557b";
  };

  buildInputs = [ ecl-license ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-config ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Color codes for ansii consoles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
