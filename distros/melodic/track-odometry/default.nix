
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, message-filters, nav-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-track-odometry";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/track_odometry/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "0104ad5995a885821726540ca1279e34520f5ac2227e5238dc20b19b5ac9fd4b";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs message-filters nav-msgs neonavigation-common roscpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Odometry slip compensation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
