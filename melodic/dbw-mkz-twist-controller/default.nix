
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, sensor-msgs, catkin, dynamic-reconfigure, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-twist-controller";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_twist_controller/1.1.1-0.tar.gz;
    sha256 = "cdef1fc782da0f8084335f59afe6d4e49d0415b7e5cbd9c3225cef3a8cfdc126";
  };

  buildInputs = [ dbw-mkz-msgs sensor-msgs dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ dbw-mkz-msgs sensor-msgs dynamic-reconfigure std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Twist (speed and angular rate) controller for brake/throttle/steering'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
