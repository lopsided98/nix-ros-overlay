
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, nav-msgs, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-map-msgs";
  version = "1.13.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_msgs-release/archive/release/kinetic/map_msgs/1.13.0-0.tar.gz;
    sha256 = "d64d8011c9286a5ca31e055bbf201d5fee118e79851feade72e3b6c2faa1b20a";
  };

  buildInputs = [ std-msgs nav-msgs message-generation sensor-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs nav-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages commonly used in mapping packages.'';
    #license = lib.licenses.BSD;
  };
}
