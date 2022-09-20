
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-license }:
buildRosPackage {
  pname = "ros-melodic-ecl-manipulators";
  version = "0.60.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_manipulation-release/archive/release/melodic/ecl_manipulators/0.60.3-0.tar.gz";
    name = "0.60.3-0.tar.gz";
    sha256 = "29d59a85307ce361a71f362a25d9b1ff94aaafd5a2df8a51d0659f74d3d735d9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-exceptions ecl-formatters ecl-geometry ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Deploys various manipulation algorithms, currently just 
    feedforward filters (interpolations).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
