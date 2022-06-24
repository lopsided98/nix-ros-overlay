
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, marker-msgs, mrpt-msgs, mrpt-msgs-bridge, mrpt2, nav-msgs, rosbag, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-mrpt-rawlog";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_rawlog/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "8c303fdc125e639286a56e2599c6f578048d5ab6c1ed795527333390b1ee6634";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure marker-msgs mrpt-msgs mrpt-msgs-bridge mrpt2 nav-msgs rosbag roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides nodes to record and play MRPT rawlogs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
