
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-pilz-msgs";
  version = "0.3.8";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_msgs/0.3.8-0.tar.gz";
    name = "0.3.8-0.tar.gz";
    sha256 = "9a0f38ee0ba7249d6ff24ef7e07f7f8fd7a1dd114fce97a7e7fcaa89a350155b";
  };

  buildType = "catkin";
  buildInputs = [ moveit-msgs message-generation ];
  propagatedBuildInputs = [ moveit-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
