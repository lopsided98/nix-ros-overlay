
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, marker-msgs, mrpt-msgs, mrpt2, ros-environment, roscpp, tf2 }:
buildRosPackage {
  pname = "ros-melodic-mrpt-msgs-bridge";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_msgs_bridge/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "35fe4314b5efcd7172fcad4750d00030e53020644233c9743953f7cb09541f0c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ geometry-msgs marker-msgs mrpt-msgs mrpt2 roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library to convert between custom mrpt_msgs messages and native MRPT classes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
