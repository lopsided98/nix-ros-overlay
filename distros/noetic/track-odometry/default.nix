
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, message-filters, nav-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-track-odometry";
  version = "0.14.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/track_odometry/0.14.1-1.tar.gz";
    name = "0.14.1-1.tar.gz";
    sha256 = "f879ad3bd027e3f19fb80aa6fbbcb41ff3ba19d4ce6a2bc1b948221f1b242648";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs message-filters nav-msgs neonavigation-common roscpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Odometry slip compensation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
