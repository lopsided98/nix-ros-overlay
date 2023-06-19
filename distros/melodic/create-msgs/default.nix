
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-create-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autonomylab/create_autonomy-release/archive/release/melodic/create_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8be546126c259eff72b91a3c7ec15b1b2227f143d1940f7827e7438c65f2b806";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common message definitions for create_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
