
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bfl, catkin, geometry-msgs, message-filters, people-msgs, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-people-tracking-filter";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/people_tracking_filter/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "f00936d2c829b1bcfbd159e2e45f74d3a806ecaaef61c338ec276dae500a2af2";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ bfl geometry-msgs message-filters people-msgs roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of filtering tools for tracking people's locations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
