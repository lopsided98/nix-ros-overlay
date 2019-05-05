
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-config, ecl-build }:
buildRosPackage {
  pname = "ros-lunar-ecl-console";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/lunar/ecl_console/0.61.6-0.tar.gz;
    sha256 = "72ba9810c43171b438f808890b4cd03f918cfb3909ee37306503f276aebcdcff";
  };

  buildInputs = [ ecl-license ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-config ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Color codes for ansii consoles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
