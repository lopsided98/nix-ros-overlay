
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-serialization";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_serialization/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "237e337629963a1222b01e068886f5b69fd6a507844555ee14df1b7d4e266c77";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
