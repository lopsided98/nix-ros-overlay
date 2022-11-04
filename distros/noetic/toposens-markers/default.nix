
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rostest, rviz-visual-tools, tf2-geometry-msgs, toposens-description, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-markers";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/noetic/toposens_markers/2.3.2-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "3e35853284472575c54c817caad82306a0d044fcc1b6817c93b6bf628ad8794e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp rviz-visual-tools tf2-geometry-msgs toposens-description toposens-driver toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz integration for TS sensor data.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
