
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ibeo-msgs";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/noetic/ibeo_msgs/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "d3444d954ef9fb4ca54a1649051d275756f7bdf0312716a14a7c1ca60311dd8e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ros-environment ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ibeo_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
