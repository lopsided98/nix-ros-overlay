
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-power-msgs";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/power_msgs-release/archive/release/melodic/power_msgs/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "77dade4006aa8238980b62f305d04ffbcfd460fedaed7dba6ebd9db7bb59a299";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for power measurement and breaker control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
