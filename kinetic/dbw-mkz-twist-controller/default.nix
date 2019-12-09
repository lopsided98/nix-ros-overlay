
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, dynamic-reconfigure, std-msgs, catkin, dbw-mkz-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dbw-mkz-twist-controller";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/kinetic/dbw_mkz_twist_controller/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "d3bbcbcb57356708ba1f7c7c7c882c7b05a920adc7c87974fc6d07e9c49fef81";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure std-msgs dbw-mkz-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure std-msgs dbw-mkz-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Twist (speed and angular rate) controller for brake/throttle/steering'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
