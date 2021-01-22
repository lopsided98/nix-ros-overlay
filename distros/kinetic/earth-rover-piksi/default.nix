
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, piksi-multi-rtk, piksi-rtk-msgs }:
buildRosPackage {
  pname = "ros-kinetic-earth-rover-piksi";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/earthrover/earth_rover_piksi-release/archive/release/kinetic/earth_rover_piksi/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "6913ef4881f04ad686a9ae3cac69b988375ee9105b39314636a86d754a5b02e2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ piksi-multi-rtk piksi-rtk-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the earth_rover_piksi repository.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
