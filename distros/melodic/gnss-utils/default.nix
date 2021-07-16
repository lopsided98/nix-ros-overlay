
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, mavros-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-gnss-utils";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/gnss_utils/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "675d7215ba226273960df07af39b3dcd69fd8d3c99a587da8952f298be682e35";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geographic-msgs mavros-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The GNSS_utils package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
