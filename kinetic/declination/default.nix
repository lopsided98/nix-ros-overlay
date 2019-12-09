
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, tf, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-declination";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/declination-release/archive/release/kinetic/declination/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "1c37c79dd33b2c2619f179c8a164a97a066b98f95aaa2934d4940ca4438ff51d";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs tf roscpp rospy ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs tf roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Computes magnetic compass offset from NavSatFix, and provides
               nodes to apply this offset to various standard messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
