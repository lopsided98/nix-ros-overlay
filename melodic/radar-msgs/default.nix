
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-radar-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/radar_msgs/2.3.1-0.tar.gz;
    sha256 = "ef32eb400ff896750907c99abf7c31091f742b43a1bd011b35c15ee14deb5304";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Generic Radar Messages'';
    #license = lib.licenses.MIT;
  };
}
