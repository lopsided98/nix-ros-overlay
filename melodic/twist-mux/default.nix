
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, twist-mux-msgs, diagnostic-updater, rostest, rostopic, visualization-msgs, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-twist-mux";
  version = "3.1.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/twist_mux-release/archive/release/melodic/twist_mux/3.1.0-1.tar.gz;
    sha256 = "aa2888069d0ed77dbab6759a450cef52d03b6f64b09514c006bd2f49384732bd";
  };

  checkInputs = [ rostopic rospy ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs std-msgs visualization-msgs twist-mux-msgs roscpp ];
  nativeBuildInputs = [ diagnostic-updater rostest geometry-msgs std-msgs catkin visualization-msgs roscpp ];

  meta = {
    description = ''Twist multiplexer, which multiplex several velocity commands (topics) and
      allows to priorize or disable them (locks).'';
    #license = lib.licenses.CC BY-NC-SA 4.0;
  };
}
