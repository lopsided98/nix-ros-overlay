
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-object-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_object_msgs/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "d8f5229251f802d18938dc867fe768967e3fd5d4179afc0948bea0de55588818";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_object_msgs package. This pkg provides a set of messages used to detect, map and track objects of different types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
