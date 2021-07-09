
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, mavros-msgs, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mavros-commands";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/mavros_commands/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "a40f4d531e6cd9533318af167c1f13f62d858811653b1054c16ed9131924f14f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mavros mavros-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mavros Common Commands'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
