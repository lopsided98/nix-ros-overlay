
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bfl, catkin, geometry-msgs, message-filters, people-msgs, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-people-tracking-filter";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/melodic/people_tracking_filter/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "c248a935edf57a2326396a576622a79a75ec6d74679bf851a35c7004f0b2c8c1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bfl geometry-msgs message-filters people-msgs roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of filtering tools for tracking people's locations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
