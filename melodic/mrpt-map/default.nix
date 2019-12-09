
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt1, sensor-msgs, std-msgs, tf, catkin, mrpt-bridge, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-map";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_map/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "1347d1084c5cd1bfbaf3b6fad8db1512c848d49ef81612f5be09837787dcf6a9";
  };

  buildType = "catkin";
  buildInputs = [ mrpt1 sensor-msgs std-msgs tf mrpt-bridge roscpp nav-msgs ];
  propagatedBuildInputs = [ mrpt1 sensor-msgs std-msgs tf mrpt-bridge roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
