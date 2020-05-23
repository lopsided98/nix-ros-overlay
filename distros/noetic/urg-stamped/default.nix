
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-urg-stamped";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/noetic/urg_stamped/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "ab75df5a31e1c4a6eccf8c51f3bd93ea337f8a2331692aca8e64c657f30a3858";
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
