
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, geographic-msgs, message-generation, marti-common-msgs, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-marti-nav-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/kinetic/marti_nav_msgs/0.8.0-0.tar.gz;
    sha256 = "6ff8ffceb82bf7632fb7abcea09207abc5036b1ef85801340f25621bc8a61173";
  };

  propagatedBuildInputs = [ geographic-msgs marti-common-msgs message-runtime std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ geographic-msgs message-generation marti-common-msgs std-msgs sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''marti_nav_msgs'';
    #license = lib.licenses.BSD;
  };
}
