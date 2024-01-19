
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-console";
  version = "0.61.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/noetic/ecl_console/0.61.6-1.tar.gz";
    name = "0.61.6-1.tar.gz";
    sha256 = "63176776ff8c55b804b1e31c543b03ea03b4b1fa901aa65ff3cce40f06499fc8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Color codes for ansii consoles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
