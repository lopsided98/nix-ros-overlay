
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, dynamic-reconfigure, std-msgs, catkin, dbw-mkz-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-twist-controller";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_twist_controller/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "79d02132a2fa17b12ff0dcb521c4565f0d4cfe71819803110f1eb8262a77dc09";
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
