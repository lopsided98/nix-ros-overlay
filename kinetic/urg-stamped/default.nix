
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-urg-stamped";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/kinetic/urg_stamped/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "fae0726c9ba44fbae6d2f2aa659edf7b010288e6bbe8310e86848356a7821dde";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roscpp ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Precisely stamped URG driver for ROS'';
    license = with lib.licenses; [ asl20 ];
  };
}
