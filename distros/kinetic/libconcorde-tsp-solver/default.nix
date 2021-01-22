
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libqsopt }:
buildRosPackage {
  pname = "ros-kinetic-libconcorde-tsp-solver";
  version = "0.6.12";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libconcorde_tsp_solver/0.6.12-0.tar.gz";
    name = "0.6.12-0.tar.gz";
    sha256 = "6bc33bbe462860121915c9ea60425299a581c8a55ac0e925a0027258652aec61";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libqsopt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper for the concorde traveling salesman problem solver. The code was obtained from http://www.math.uwaterloo.ca/tsp/concorde/downloads/downloads.htm all rights of it go to the corresponding authors David Applegate, Robert Bixby, Vasek Chvatal and William Cook. 
The library doesn't give a specific license, but is provided free for academic research use, for further licensing options contact William Cook.'';
    license = with lib.licenses; [ "free for academic research, for further licensing contact Wiliam Cook" ];
  };
}
