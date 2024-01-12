
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, geometry-msgs, roscpp, rospy, rostest, rostopic, std-msgs, twist-mux-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-twist-mux";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/twist_mux-release/archive/release/noetic/twist_mux/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "71e3e5b1d10125f0fed59a044ff37eddc799ed27c0a944fe319dbe0cece79844";
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
