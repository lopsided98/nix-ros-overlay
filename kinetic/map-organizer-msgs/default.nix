
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, nav-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-map-organizer-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/kinetic/map_organizer_msgs/0.3.1-0.tar.gz;
    sha256 = "41458475dd47881774f6475f9807a315a76467a10efd37534b3009c50357fa7e";
  };

  buildInputs = [ nav-msgs message-generation ];
  propagatedBuildInputs = [ nav-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for map_organizer_msgs package'';
    #license = lib.licenses.BSD;
  };
}
