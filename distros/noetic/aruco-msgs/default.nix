
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-aruco-msgs";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/noetic/aruco_msgs/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "5594a1b779c90a433dad84313dc629112e7acb124c8ba90854e7345c8d917172";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The aruco_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
