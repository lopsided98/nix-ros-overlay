
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, twist-mux-msgs, std-msgs, catkin, rostopic, visualization-msgs, roscpp, rospy, rostest, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-twist-mux";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/twist_mux-release/archive/release/melodic/twist_mux/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "aa2888069d0ed77dbab6759a450cef52d03b6f64b09514c006bd2f49384732bd";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs roscpp visualization-msgs diagnostic-updater rostest ];
  checkInputs = [ rospy rostopic ];
  propagatedBuildInputs = [ geometry-msgs twist-mux-msgs std-msgs visualization-msgs roscpp diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Twist multiplexer, which multiplex several velocity commands (topics) and
      allows to priorize or disable them (locks).'';
    license = with lib.licenses; [ cc-by-nc-sa-40 ];
  };
}
