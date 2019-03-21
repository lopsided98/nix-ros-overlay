
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-costmap-cspace-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/costmap_cspace_msgs/0.3.1-0.tar.gz;
    sha256 = "0b474cf9732adf886955945c15639cdeecf9854c91de31e901c94b36dcccb072";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Message definitions for costmap_cspace package'';
    #license = lib.licenses.BSD;
  };
}
