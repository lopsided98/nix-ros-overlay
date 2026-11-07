
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, cmake, geometry-msgs, lz4, mola-common, mola-kernel, mrpt-maps, mrpt-obs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mola-input-rosbag1";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_input_rosbag1-release/archive/release/humble/mola_input_rosbag1/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "c3d6c96d768146e38e1c3d8c418e95f271e2ee5aace22e9e7aa8c7bd0bc4ae18";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost bzip2 geometry-msgs lz4 mola-common mola-kernel mrpt-maps mrpt-obs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MOLA DataSource from ROS1 bag files that does not need a ROS1 installation";
    license = with lib.licenses; [ bsd3 ];
  };
}
