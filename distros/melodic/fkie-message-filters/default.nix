
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, roscpp, rostest, rosunit, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fkie-message-filters";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/message_filters-release/archive/release/melodic/fkie_message_filters/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "eb46a7a5c55017a8d1b6ac46a790e57762819ccc0e26884a1ce1f9f9835bce39";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit std-msgs ];
  propagatedBuildInputs = [ image-transport roscpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Improved ROS message filters'';
    license = with lib.licenses; [ asl20 ];
  };
}
