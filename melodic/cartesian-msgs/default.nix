
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cartesian-msgs";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/PickNikRobotics/cartesian_msgs-release/archive/release/melodic/cartesian_msgs/0.0.3-0.tar.gz;
    sha256 = "25a7fcf876ffdfc7ee4515d150b777726bca7090c6aa689268643c4dc8d4eb73";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stream cartesian commands'';
    #license = lib.licenses.BSD;
  };
}
