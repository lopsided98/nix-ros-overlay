
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, people-msgs, std-msgs, tf, catkin, bfl, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-people-tracking-filter";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/people_tracking_filter/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "dcc5c4c48372f86d64edb2d9fbe200f3bf5990cac1382732b781dc374dae5641";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs people-msgs std-msgs tf bfl roscpp ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs people-msgs std-msgs tf bfl roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of filtering tools for tracking people's locations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
