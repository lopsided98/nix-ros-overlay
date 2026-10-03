
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, bzip2, cmake, geometry-msgs, lz4, mola-common, mola-kernel, mrpt-maps, mrpt-obs, opencv, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mola-input-rosbag1";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_input_rosbag1-release/archive/release/humble/mola_input_rosbag1/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "33af126a7022f5168c138f6daf1b66aaabe54ca5bb01f5ce5148569d79a7adc8";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost bzip2 geometry-msgs lz4 mola-common mola-kernel mrpt-maps mrpt-obs opencv opencv.cxxdev tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MOLA DataSource from ROS1 bag files that does not need a ROS1 installation";
    license = with lib.licenses; [ bsd3 ];
  };
}
