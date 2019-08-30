
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-people-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/melodic/people_msgs/1.2.0-1.tar.gz;
    sha256 = "34ea58081f5b53566700ebf0728e024148a0b653f57b5a82560da05848f30f82";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by nodes in the people stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
