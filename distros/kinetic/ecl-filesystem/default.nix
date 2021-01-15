
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-errors, ecl-exceptions, ecl-license }:
buildRosPackage {
  pname = "ros-kinetic-ecl-filesystem";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_filesystem/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "19864fa5b9be4c5736a8b7f3fa1185fa29ec1606993d31e36b878cbd24f6b880";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-exceptions ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cross platform filesystem utilities (until c++11 makes its way in).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
