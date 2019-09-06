
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jackal-gazebo }:
buildRosPackage {
  pname = "ros-melodic-jackal-simulator";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/melodic/jackal_simulator/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "54d03ef799f70826356e17989b437e8eb28de08fdb9cff40d7ed275e63fc263b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jackal-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Jackal.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
