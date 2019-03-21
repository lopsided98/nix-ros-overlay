
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, people-msgs, tf, sensor-msgs, catkin, message-filters, bfl, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-people-tracking-filter";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/kinetic/people_tracking_filter/1.1.2-0.tar.gz;
    sha256 = "f9e560b17b75412fdf498b262895b005fccf8b7f8cb72691938f05cf68a2a978";
  };

  propagatedBuildInputs = [ people-msgs bfl std-msgs sensor-msgs tf message-filters geometry-msgs roscpp ];
  nativeBuildInputs = [ people-msgs sensor-msgs catkin message-filters roscpp bfl std-msgs tf geometry-msgs ];

  meta = {
    description = ''A collection of filtering tools for tracking people's locations'';
    #license = lib.licenses.BSD;
  };
}
