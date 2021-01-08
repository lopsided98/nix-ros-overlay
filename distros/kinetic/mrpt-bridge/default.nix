
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, gtest, marker-msgs, message-generation, message-runtime, mrpt-msgs, mrpt1, nav-msgs, pcl, pcl-conversions, qt5, roscpp, rosunit, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-bridge";
  version = "0.1.25";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_bridge-release/archive/release/kinetic/mrpt_bridge/0.1.25-0.tar.gz";
    name = "0.1.25-0.tar.gz";
    sha256 = "c53c72d2503e2614ac6b55894170ed2aebe0951b135a2106cf1d418c8a71b3b6";
  };

  buildType = "catkin";
  buildInputs = [ pcl pcl-conversions qt5.qtbase ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs marker-msgs message-generation message-runtime mrpt-msgs mrpt1 nav-msgs roscpp sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library to convert between ROS messages and MRPT classes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
