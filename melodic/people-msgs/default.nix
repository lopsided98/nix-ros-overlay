
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-people-msgs";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/melodic/people_msgs/1.1.2-0.tar.gz;
    sha256 = "37885342c0d98ce64a2bfd0f0145edc510220564fdea1284c496e28b848f36d7";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Messages used by nodes in the people stack.'';
    #license = lib.licenses.BSD;
  };
}
