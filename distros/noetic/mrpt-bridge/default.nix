
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, gtest, marker-msgs, message-generation, message-runtime, mrpt-msgs, mrpt2, nav-msgs, pcl, pcl-conversions, qt5, roscpp, rosunit, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-mrpt-bridge";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_bridge-release/archive/release/noetic/mrpt_bridge/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "8344fa904fd7a4ba211cc9d861034f92c4494be9b857d1f64eb54550865671e5";
  };

  buildType = "catkin";
  buildInputs = [ pcl pcl-conversions qt5.qtbase ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs marker-msgs message-generation message-runtime mrpt-msgs mrpt2 nav-msgs roscpp sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library to convert between ROS messages and MRPT classes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
