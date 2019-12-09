
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, std-msgs, catkin, roslint, rosunit, roscpp, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-trajectory-tracker-msgs";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/kinetic/trajectory_tracker_msgs/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "fc27910c3d5c5391976d1d76ba51ad4333646a0bd9d68839ef1a527068331a56";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  checkInputs = [ rosunit nav-msgs roscpp roslint ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for trajectory_tracker package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
