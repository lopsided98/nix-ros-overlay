
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, catkin, marti-common-msgs, geographic-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-marti-nav-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/kinetic/marti_nav_msgs/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "6ff8ffceb82bf7632fb7abcea09207abc5036b1ef85801340f25621bc8a61173";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs marti-common-msgs geographic-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs marti-common-msgs geographic-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_nav_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
