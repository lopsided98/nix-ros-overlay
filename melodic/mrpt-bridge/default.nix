
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, marker-msgs, rosunit, nav-msgs, mrpt1, sensor-msgs, qt5, std-msgs, catkin, pcl, cv-bridge, roscpp, message-generation, mrpt-msgs, stereo-msgs, pcl-conversions, gtest, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-mrpt-bridge";
  version = "0.1.25";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_bridge-release/archive/release/melodic/mrpt_bridge/0.1.25-0.tar.gz";
    name = "0.1.25-0.tar.gz";
    sha256 = "58292956027c9b5bc85b4223fc9ce1220d88b975e68206ad1a963728ca27d396";
  };

  buildType = "catkin";
  buildInputs = [ mrpt1 sensor-msgs geometry-msgs mrpt-msgs std-msgs tf marker-msgs qt5.qtbase pcl stereo-msgs cv-bridge pcl-conversions roscpp message-generation nav-msgs ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ mrpt1 sensor-msgs geometry-msgs message-runtime mrpt-msgs std-msgs tf marker-msgs stereo-msgs cv-bridge roscpp message-generation nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library to convert between ROS messages and MRPT classes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
