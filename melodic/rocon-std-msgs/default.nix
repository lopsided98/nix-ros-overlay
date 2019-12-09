
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, rocon-service-pair-msgs, message-generation }:
buildRosPackage {
  pname = "ros-melodic-rocon-std-msgs";
  version = "0.9.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/rocon_std_msgs/0.9.0-0.tar.gz";
    name = "0.9.0-0.tar.gz";
    sha256 = "6f2aa4bddb42919a924d828b30e6eb4a2d25066bafe4d707c4a394393e138f18";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation rocon-service-pair-msgs ];
  propagatedBuildInputs = [ rocon-service-pair-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard messages used by other rocon specific package types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
