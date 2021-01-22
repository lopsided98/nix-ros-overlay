
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, geometry-msgs, roscpp, rospy, rostest, rostopic, std-msgs, twist-mux-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-twist-mux";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/twist_mux-release/archive/release/noetic/twist_mux/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "8e34204ea1a225e4bf0610fb0ce3d0df6a107fa57d4a90111edee495367bce81";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ rospy rostopic ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs roscpp std-msgs twist-mux-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Twist multiplexer, which multiplex several velocity commands (topics) and
      allows to priorize or disable them (locks).'';
    license = with lib.licenses; [ cc-by-nc-sa-40 ];
  };
}
