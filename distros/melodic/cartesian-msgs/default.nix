
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cartesian-msgs";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/cartesian_msgs-release/archive/release/melodic/cartesian_msgs/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "25a7fcf876ffdfc7ee4515d150b777726bca7090c6aa689268643c4dc8d4eb73";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stream cartesian commands'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
