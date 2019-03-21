
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, people-msgs, tf, sensor-msgs, catkin, message-filters, bfl, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-people-tracking-filter";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/melodic/people_tracking_filter/1.1.2-0.tar.gz;
    sha256 = "1a0322dc068da4153612ec54bc60c3d5603217eb160da8c1632fa01c9578eeff";
  };

  propagatedBuildInputs = [ people-msgs bfl std-msgs sensor-msgs tf message-filters geometry-msgs roscpp ];
  nativeBuildInputs = [ people-msgs sensor-msgs catkin message-filters roscpp bfl std-msgs tf geometry-msgs ];

  meta = {
    description = ''A collection of filtering tools for tracking people's locations'';
    #license = lib.licenses.BSD;
  };
}
