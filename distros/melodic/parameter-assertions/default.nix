
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-parameter-assertions";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/RoboJackets/rj-ros-common-release/archive/release/melodic/parameter_assertions/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "639173429975b82767392b4c719fff84c22fc31c40aa83b04bcda8b8eeca6df8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A library for ROS parameter assertions'';
    license = with lib.licenses; [ mit ];
  };
}
