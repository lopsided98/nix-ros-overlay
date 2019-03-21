
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, tf, pcl-conversions, geometry-msgs, stereo-msgs, message-generation, message-runtime, marker-msgs, gtest, catkin, nav-msgs, mrpt-msgs, mrpt1, std-msgs, roscpp, pcl, sensor-msgs, qt5, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-bridge";
  version = "0.1.25";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_bridge-release/archive/release/kinetic/mrpt_bridge/0.1.25-0.tar.gz;
    sha256 = "c53c72d2503e2614ac6b55894170ed2aebe0951b135a2106cf1d418c8a71b3b6";
  };

  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ marker-msgs tf sensor-msgs cv-bridge message-generation mrpt-msgs message-runtime nav-msgs mrpt1 std-msgs roscpp geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ marker-msgs pcl sensor-msgs cv-bridge catkin qt5.qtbase roscpp nav-msgs mrpt-msgs message-generation mrpt1 std-msgs tf pcl-conversions geometry-msgs stereo-msgs ];

  meta = {
    description = ''C++ library to convert between ROS messages and MRPT classes'';
    #license = lib.licenses.BSD;
  };
}
