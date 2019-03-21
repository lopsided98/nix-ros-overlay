
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-wireless-msgs";
  version = "0.0.7";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/wireless-release/archive/release/kinetic/wireless_msgs/0.0.7-0.tar.gz;
    sha256 = "640e622ca48d718ae7f3acf0c250c7768bee747bc9ecdcd9ed71391c63d735a4";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Messages for describing aspects of a wireless network, connection, etc.'';
    #license = lib.licenses.BSD;
  };
}
