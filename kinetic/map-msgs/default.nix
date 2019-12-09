
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-runtime, std-msgs, catkin, message-generation, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-map-msgs";
  version = "1.13.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_msgs-release/archive/release/kinetic/map_msgs/1.13.0-0.tar.gz";
    name = "1.13.0-0.tar.gz";
    sha256 = "d64d8011c9286a5ca31e055bbf201d5fee118e79851feade72e3b6c2faa1b20a";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs message-generation nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs std-msgs message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages commonly used in mapping packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
