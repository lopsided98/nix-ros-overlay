
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, geometry-msgs, marti-common-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marti-nav-msgs";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/noetic/marti_nav_msgs/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "8552a557452a9482a2e5aa00527acabc84128c58f58d499688f93a0619754b66";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs marti-common-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_nav_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
