
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, nav-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-map-organizer-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/lunar/map_organizer_msgs/0.3.1-0.tar.gz;
    sha256 = "336ca719d11e5d580afe9d6f824986411e83947f9d59aabc24fca68cced35924";
  };

  buildInputs = [ nav-msgs message-generation ];
  propagatedBuildInputs = [ nav-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for map_organizer_msgs package'';
    #license = lib.licenses.BSD;
  };
}
