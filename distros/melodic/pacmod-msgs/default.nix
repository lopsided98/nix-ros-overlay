
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pacmod-msgs";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/pacmod_msgs/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "3bf0ce0f3c1971b85a0af45522044352ea6f6e5b1baa313563cc8fc035536eb6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ros-environment ];
  propagatedBuildInputs = [ message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definition files for the PACMod driver'';
    license = with lib.licenses; [ mit ];
  };
}
