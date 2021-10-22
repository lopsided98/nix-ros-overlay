
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-drone-assets";
  version = "1.3.9-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/drone_assets/1.3.9-1.tar.gz";
    name = "1.3.9-1.tar.gz";
    sha256 = "07c8ebaa41c032be699feada64d7820da7690e3660dbcc2c1b62fc4b8d7061d2";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
