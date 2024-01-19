
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-gui-msgs";
  version = "4.3.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/noetic/jsk_gui_msgs/4.3.2-1.tar.gz";
    name = "4.3.2-1.tar.gz";
    sha256 = "35f8d474f2c514de458ba051ecccbd38b318be27e019c9bb781d6ab96b48a4e6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_gui_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
