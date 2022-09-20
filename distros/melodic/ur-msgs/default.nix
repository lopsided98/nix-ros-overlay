
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ur-msgs";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ur_msgs-release/archive/release/melodic/ur_msgs/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "a532eae48580e45bb3a1493d46aeeed4ec80e53a21e7887c859e93be455f9262";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service definitions for interacting with Universal Robots robot controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
