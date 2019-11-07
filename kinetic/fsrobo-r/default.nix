
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fsrobo-r-driver, fsrobo-r-trajectory-filters, catkin, fsrobo-r-moveit-config, fsrobo-r-description, fsrobo-r-bringup, fsrobo-r-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "e74f4fcbc477415783942a54a8a7847165d65724bcf378f9f7ae47a5a0e1b26d";
  };

  buildType = "catkin";
  buildInputs = [ fsrobo-r-driver fsrobo-r-trajectory-filters fsrobo-r-moveit-config fsrobo-r-description fsrobo-r-bringup fsrobo-r-msgs ];
  propagatedBuildInputs = [ fsrobo-r-driver fsrobo-r-trajectory-filters fsrobo-r-moveit-config fsrobo-r-description fsrobo-r-bringup fsrobo-r-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for FSRobo-R'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
