
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, message-generation, nav-msgs, message-runtime, std-msgs, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-trajectory-tracker-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/trajectory_tracker_msgs/0.3.1-0.tar.gz;
    sha256 = "c6c75c98fa9489ae279b8e4f5b88e7f34a23c3ca66b9543851858a140f56778e";
  };

  checkInputs = [ rosunit nav-msgs roslint roscpp ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Message definitions for trajectory_tracker package'';
    #license = lib.licenses.BSD;
  };
}
