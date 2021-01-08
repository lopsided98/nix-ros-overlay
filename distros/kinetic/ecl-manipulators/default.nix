
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-license }:
buildRosPackage {
  pname = "ros-kinetic-ecl-manipulators";
  version = "0.60.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_manipulation-release/archive/release/kinetic/ecl_manipulators/0.60.1-1.tar.gz";
    name = "0.60.1-1.tar.gz";
    sha256 = "7e26de305073066fc8e1025448dfbf33af8b5b0a2f464495ec43c0e1e7224730";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build ecl-exceptions ecl-formatters ecl-geometry ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Deploys various manipulation algorithms, currently just 
    feedforward filters (interpolations).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
