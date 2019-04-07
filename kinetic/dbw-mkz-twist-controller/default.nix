
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, sensor-msgs, catkin, dynamic-reconfigure, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dbw-mkz-twist-controller";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/kinetic/dbw_mkz_twist_controller/1.1.1-0.tar.gz;
    sha256 = "af9b38e8560adc4b70644b1e4c0df9078c6663cee394d9a12024a1de461bec66";
  };

  buildInputs = [ dbw-mkz-msgs dynamic-reconfigure std-msgs sensor-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ dbw-mkz-msgs dynamic-reconfigure std-msgs sensor-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Twist (speed and angular rate) controller for brake/throttle/steering'';
    #license = lib.licenses.BSD;
  };
}
