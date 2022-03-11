
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, gtest, marker-msgs, message-generation, message-runtime, mrpt-msgs, mrpt2, nav-msgs, pcl, pcl-conversions, qt5, roscpp, rosunit, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-mrpt-bridge";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_bridge-release/archive/release/noetic/mrpt_bridge/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e12355e480e0d0894780c09077b348567522f187086170bbc47d54bb045dcfd9";
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
