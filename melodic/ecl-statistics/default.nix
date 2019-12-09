
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-type-traits, ecl-mpl, ecl-config, ecl-build, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-melodic-ecl-statistics";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_statistics/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "67ed25a3f69aa9d272c6c700e2b079115fddd28ed7b0f020f1fec28061a7579b";
  };

  buildType = "catkin";
  buildInputs = [ ecl-license ecl-type-traits ecl-mpl ecl-config ecl-build ecl-linear-algebra ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ecl-mpl ecl-config ecl-build ecl-linear-algebra ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common statistical structures and algorithms for control systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
