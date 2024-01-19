
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-nav2d-msgs";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/noetic/nav2d_msgs/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "7a9925f765c7a8511e383261a46cba96ba21180fb991f193bec75f710e6bcc7b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used for 2D-Navigation.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
