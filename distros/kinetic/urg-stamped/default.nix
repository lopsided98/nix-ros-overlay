
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-urg-stamped";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/kinetic/urg_stamped/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "d803529a50f64c8291d82296a7675a6a7457f650059839534bd2cfe9cd897d43";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Precisely stamped URG driver for ROS'';
    license = with lib.licenses; [ asl20 ];
  };
}
