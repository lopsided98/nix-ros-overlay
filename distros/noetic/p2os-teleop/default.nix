
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-p2os-teleop";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/noetic/p2os_teleop/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "0ca88afa5f7a774ec39c1f793799f53267d1971a3a25da7519b7844f08ccca95";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A teleoperation node for the p2os_driver package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
