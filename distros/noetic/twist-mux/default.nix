
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, geometry-msgs, roscpp, rospy, rostest, rostopic, std-msgs, twist-mux-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-twist-mux";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/twist_mux-release/archive/release/noetic/twist_mux/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "47ddfc5486f4b5f3a1e2465be818860e8427b00a7dd483945cb55ba8eab08f6c";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ rospy rostopic ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs roscpp std-msgs twist-mux-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Twist multiplexer, which multiplex several velocity commands (topics) and
      allows to priorize or disable them (locks).'';
    license = with lib.licenses; [ cc-by-nc-sa-40 ];
  };
}
