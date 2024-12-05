
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslint, rostest, rosunit, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-urg-stamped";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/noetic/urg_stamped/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "916dd7bf2a825d28282f225a8200142914aa00ce995c2e434b0ca0f391342226";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Precisely stamped URG driver for ROS";
    license = with lib.licenses; [ asl20 ];
  };
}
