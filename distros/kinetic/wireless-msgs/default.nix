
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-wireless-msgs";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/kinetic/wireless_msgs/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "640e622ca48d718ae7f3acf0c250c7768bee747bc9ecdcd9ed71391c63d735a4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for describing aspects of a wireless network, connection, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
