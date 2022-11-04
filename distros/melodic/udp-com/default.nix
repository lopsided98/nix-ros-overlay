
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nodelet, roscpp, roslint, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-udp-com";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/udp_com-release/archive/release/melodic/udp_com/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "2a27e17103618c78691b9d353174c16fb4565148e8be0825fc629dc55ebbb068";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ message-generation message-runtime nodelet roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic UDP communication ROS package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
