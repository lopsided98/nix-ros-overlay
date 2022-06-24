
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, marker-msgs, mrpt-msgs, mrpt2, ros-environment, roscpp, tf2 }:
buildRosPackage {
  pname = "ros-melodic-mrpt-msgs-bridge";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_msgs_bridge/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "23260a8254f5c098a39e96874ffebd9a6ac04a0f08722a1c4b49a80ecf8a8611";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ geometry-msgs marker-msgs mrpt-msgs mrpt2 roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library to convert between custom mrpt_msgs messages and native MRPT classes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
