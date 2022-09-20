
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, catkin, flex, gawk, mk, rosbuild, roslib, rospack }:
buildRosPackage {
  pname = "ros-melodic-ffha";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ffha/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "cf98d5edbe4df60e5c37270f7a830cdf00fcee43004e8d5f743adc5e6c717ab4";
  };

  buildType = "catkin";
  buildInputs = [ bison catkin flex gawk mk rosbuild roslib rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)'';
    license = with lib.licenses; [ "GPL" ];
  };
}
