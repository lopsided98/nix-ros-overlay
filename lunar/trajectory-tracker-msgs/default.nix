
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, message-generation, nav-msgs, message-runtime, std-msgs, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-trajectory-tracker-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/lunar/trajectory_tracker_msgs/0.3.1-0.tar.gz;
    sha256 = "b0b6fef1f411de545492c1f53aba4f1b4c43c411da6e1cf971a6fd39c1eaffd2";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  checkInputs = [ rosunit nav-msgs roslint roscpp ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for trajectory_tracker package'';
    #license = lib.licenses.BSD;
  };
}
