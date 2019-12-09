
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fsrobo-r-trajectory-filters, fsrobo-r-moveit-config, catkin, fsrobo-r-msgs, fsrobo-r-bringup, fsrobo-r-description, fsrobo-r-driver }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "03ca28b575189af4037ae3c8ced199817f5f13d1c9451c069bcfc1690455cc48";
  };

  buildType = "catkin";
  buildInputs = [ fsrobo-r-trajectory-filters fsrobo-r-moveit-config fsrobo-r-msgs fsrobo-r-description fsrobo-r-bringup fsrobo-r-driver ];
  propagatedBuildInputs = [ fsrobo-r-trajectory-filters fsrobo-r-moveit-config fsrobo-r-msgs fsrobo-r-description fsrobo-r-bringup fsrobo-r-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for FSRobo-R'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
