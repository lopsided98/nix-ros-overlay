
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-license, ecl-linear-algebra, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-noetic-ecl-statistics";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_statistics/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "e067ac97b7e596d086fdbbeb6b31ef268bb7fe7fe63c76ffb40e5be3ff350af5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-license ecl-linear-algebra ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common statistical structures and algorithms for control systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
