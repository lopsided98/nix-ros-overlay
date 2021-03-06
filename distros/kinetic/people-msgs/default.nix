
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-people-msgs";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/kinetic/people_msgs/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "0eeaed58e5efe8dc6e0fdfdaf122199edc681055f5f42fba3f8e528709d68c94";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by nodes in the people stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
