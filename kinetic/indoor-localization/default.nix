
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, rostest, message-generation, message-runtime, rospy, std-msgs, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-indoor-localization";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/inomuh/indoor_localization-release/archive/release/kinetic/indoor_localization/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0d75f6ca39b03ca7921d336e66876ec4c8f8c5a18659b0bf1dd0493a908793cf";
  };

  buildType = "catkin";
  buildInputs = [ roslint rostest message-generation rospy std-msgs roscpp geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ rostest message-generation message-runtime rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The indoor_localization package'';
    license = with lib.licenses; [ asl20 ];
  };
}
