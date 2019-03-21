
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, catkin, ecl-geometry, ecl-build, ecl-exceptions, ecl-license }:
buildRosPackage {
  pname = "ros-melodic-ecl-manipulators";
  version = "0.60.3";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_manipulation-release/archive/release/melodic/ecl_manipulators/0.60.3-0.tar.gz;
    sha256 = "29d59a85307ce361a71f362a25d9b1ff94aaafd5a2df8a51d0659f74d3d735d9";
  };

  propagatedBuildInputs = [ ecl-exceptions ecl-formatters ecl-license ecl-geometry ecl-build ];
  nativeBuildInputs = [ ecl-exceptions ecl-formatters ecl-license catkin ecl-geometry ecl-build ];

  meta = {
    description = ''Deploys various manipulation algorithms, currently just 
    feedforward filters (interpolations).'';
    #license = lib.licenses.BSD;
  };
}
