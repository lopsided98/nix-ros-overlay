
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bfl, catkin, geometry-msgs, message-filters, people-msgs, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-people-tracking-filter";
  version = "1.4.0-r4";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/melodic/people_tracking_filter/1.4.0-4.tar.gz";
    name = "1.4.0-4.tar.gz";
    sha256 = "c865fb866c756894069ec3c6565a742ce0927c3f42b2359cd0f46f31230ad87c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ bfl geometry-msgs message-filters people-msgs roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of filtering tools for tracking people's locations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
